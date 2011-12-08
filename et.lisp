;; ben.lisp
;;
;; This program keeps track of shared expenses for group of people and will
;; calculate the N*N reimbursements between everyone.
;;
;; Authors:
;; Neil Dantam
;; Arya Irani

;; ;;;;;;;;;;;;;;;;;
;; ;; Matrix Algo ;;
;; ;;;;;;;;;;;;;;;;;
(defun dispatch-line! (structure line expense-fun payment-fun)
  (case (car line)
    (expense (let ((payer (cadr (assoc 'payer (cdr line))))
                   (value (cadr (assoc 'value (cdr line))))
                   (splits (cdr (assoc 'splits (cdr line)))))
               (funcall expense-fun structure payer value splits)))
    (payment (let ((from (cadr (assoc 'from (cdr line))))
                   (to (cadr (assoc 'to (cdr line))))
                   (value (cadr (assoc 'value (cdr line)))))
               (funcall payment-fun structure from to value)))))


(defun dispatch-file (filename make-fun expense-fun payment-fun final-fun) 
  (with-open-file (fin filename)
    (let* ((people (let ((form (read fin)))
                    (assert (eq 'people (car form)))
                    (cdr form)))
           (structure (funcall make-fun people)))
      (do ((line (read fin nil) (read fin nil)))
          ((null line) (funcall final-fun people structure))
        (dispatch-line! structure line expense-fun payment-fun)
      ))))


;;;;;;;;;;;;;;;
;; Pool Algo ;;
;;;;;;;;;;;;;;;

(defun make-pool (people)
  (when people
    (cons (list (car people) 0) 
          (make-pool (cdr people)))))

(defun pool-inc! (pool person value)
  (incf (cadr (assoc person pool)) value))

(defun pool-expense! (pool payer val splits)
  (pool-inc! pool payer val)
  (if (and (listp (car splits)) (eq (caar splits) 'item))
      (let ((divisor (loop for i in splits 
                        sum (cadr i))))
        (dolist (i splits) 
          (let* ((item-value (cadr i))
                 (people (caddr i))
                 (num-people (length people)))
            (dolist (debtor people)
              (let ((debt (* (- val) (/ (/ item-value num-people) divisor))))
                (pool-inc! pool debtor debt))))))

      (let ((divisor (loop for i in splits 
                        sum (if (atom i) 1 (cadr i)))))
        (dolist (i splits) 
          (let* ((debtor (if (atom i)
                            i (car i)))
                (dividend (if (atom i)
                              1 (cadr i)))
                (debt (* -1 val (/ dividend divisor))))
            (pool-inc! pool debtor debt)))))
  pool)


(defun pool-payment! (pool from to val)
  (pool-inc! pool from val)
  (pool-inc! pool to (- val)))

(defun pool-print (pool)
  (dolist (entry pool)
    (let ((person (first entry))
          (credit (second entry)))
      (if (< (abs credit) 0.01) nil
	(format t "~A: ~$ (~A)~%" 
		person credit 
		(if (>= credit 0) "credit" "debt"))))))
  


(defun run-file-pool (filename) 
  (dispatch-file filename 
                 #'make-pool
                 #'pool-expense!
                 #'pool-payment!
                 (lambda (people pool)
                   (list people)
                   (pool-print pool))))
