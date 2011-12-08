(people arya peng karthik)

;;;;;;;;;;;;;;
;;;;;;;;;;;;;;
;;;
;;; examples:
;;;
;;; ;; 2009-03-19, repayment
;;; (payment (from jperk) (to ntd) (value 8))
;;;
;;; ;; 2009-03-21, qdoba
;;; (expense (payer ntd) (value 28.89)
;;;          (splits (ntd 6.49) (jperk  6.19) (venkat 5.99) (jscholz 8.08)))
;;;
;;; ;; 2009-03-29, trip to publix w/ misha's car
;;; (expense (payer jscholz) (value 73.10) (splits jscholz ntd venkat))
;;;
;;; (expense (payer ntd) (value 100)
;;;    (splits
;;;       (item 13.00 (arya jer jon)) ;; fancy broom
;;;       (item 24.00 (jer jon)) ;; space candy
;;;       (item 3.00  (arya)))) ;; space porno
;;;


