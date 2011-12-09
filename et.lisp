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

(defun make-pairs (people)
  "Make a alist of all possible permuted pairs.  This is technically twice as
  big than we need, but it makes get-pair simpler"
  (when people
    (append (loop for p in (cdr people)
                  collect (list (cons (car people) p) 0)
                  collect (list (cons p (car people)) 0)
                  )
            (make-pairs (cdr people)))))
(defmacro get-pair (pairs a b)
  `(cadr (assoc (cons ,a ,b) ,pairs :test #'equalp)))

(defun credit-pairs! (pairs a b x)
  "A pays x for b, b now owes x more to a"
  (incf (get-pair pairs a b) x)
  (decf (get-pair pairs b a) x))

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

(defun pairs-expense! (pairs payer val splits)
  (if (and (listp (car splits)) (eq (caar splits) 'item))
      (let ((divisor (loop for i in splits 
                        sum (cadr i))))
        (dolist (i splits) 
          (let* ((item-value (cadr i))
                 (people (caddr i))
                 (num-people (length people)))
            (dolist (debtor people)
              (let ((debt (* val (/ (/ item-value num-people) divisor))))
                (when (not (eq payer debtor)) (credit-pairs! pairs payer debtor debt)))))))

      (let ((divisor (loop for i in splits 
                        sum (if (atom i) 1 (cadr i)))))
        (dolist (i splits) 
          (let* ((debtor (if (atom i)
                            i (car i)))
                (dividend (if (atom i)
                              1 (cadr i)))
                (debt (* val (/ dividend divisor))))
            (when (not (eq payer debtor)) (credit-pairs! pairs payer debtor debt))))))
  pairs)

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

(defun pair-print (pair)
  (loop for (person credit) in pair
        for i = t then (not i)
        do (when (and i (>= (abs credit) 0.01))
             (format t "~A: ~$ (~A)~%" 
                     person credit 
                     (if (>= credit 0) "credit" "debt")))))

(defun repay-calc (pool)
  (format t "~%")
  ;Note both are sorted with #'<
  ;So they will be reverse sorted from each other by absolute value
  ;This tends to reduce the total number of payments that must happen
  (let* ((creditors
           (sort
             (remove-if (lambda (x) (< x 0.01))
                      pool
                      :key #'second)
             #'<
             :key #'second))
         (debtors
           (sort
             (remove-if (lambda (x) (> x -0.01))
                        pool
                        :key #'second)
             #'<
             :key #'second)))
    (loop while (and creditors debtors)
          for (creditor credit) = (pop creditors)
          for (debtor debit) = (pop debtors)
          do (let ((payment (min (abs credit) (abs debit))))
               (incf debit payment)
               (decf credit payment)
               (format t "~A pays ~A ~$~%" debtor creditor payment)
               (unless (< credit 0.01 )(push (list creditor credit) creditors))
               (unless (> debit -0.01 )(push (list debtor debit) debtors))))))
  


(defun run-file-pool (filename) 
  (dispatch-file filename 
                 #'make-pool
                 #'pool-expense!
                 #'pool-payment!
                 (lambda (people pool)
                   (list people)
                   (pool-print pool)
                   (repay-calc pool))))

(defun run-file-pairs (filename)
  (dispatch-file filename 
                 #'make-pairs
                 #'pairs-expense!
                 #'credit-pairs!
                 (lambda (people pool)
                   (list people)
                   (pair-print pool))))
