; list of people
(people jon eohan joe adam laura bastian peter eitan tom steffi stefan andreas marius haejong julee)

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
;;;       (item 13.00 (arya jeremy jon)) ;; fancy broom
;;;       (item 24.00 (jeremy jon)) ;; space candy
;;;       (item 3.00  (arya)))) ;; space porno
;;;

; saturday night groceries
(expense (payer joe) (value 65.00) (splits joe jon eitan steffi bastian haejong julee tom))
; payments
(payment (from bastian) (to joe) (value 10)) ; bbq$
(payment (from eitan) (to joe) (value 6)) ; bbq$
(payment (from haejong) (to joe) (value 12)) ; bbq$

; sunday boat and lunch groceries
(expense (payer haejong) (value 79.00) (splits jon bastian haejong julee tom eohan))
; payments
(payment (from tom) (to haejong) (value 12)) ; bbq$

; boat rental
(expense (payer jon) (value 550.00) (splits 
(item 35 (bastian jon eohan)) ; skis 
(item 73.33 (jon)) ; base rate
(item 73.33 (joe)) ; base rate
(item 73.33 (eohan)) ; base rate
(item 73.33 (bastian)) ; base rate
(item 70.14 (tom)) ; base rate
(item 73.33 (haejong)) ; base rate
(item 73.33 (julee)) ; base rate
(item 20.00 (marius)) ; friendly contribution
(item 55.13 (jon bastian haejong julee tom eohan joe)) ; gas
))
; payments
(payment (from tom) (to jon) (value 70.14)) ; boat $
(payment (from bastian) (to jon) (value 73.33)) ; boat $
(payment (from julee) (to jon) (value 73.33)) ; boat $
(payment (from haejong) (to jon) (value 73.33)) ; boat $
(payment (from eohan) (to jon) (value 73.33)) ; boat $
(payment (from marius) (to jon) (value 20.00)) ; boat $
(payment (from joe) (to jon) (value 40.00)) ; boat $
(payment (from bastian) (to haejong) (value 30.00)) ; expenses $
(payment (from Julee) (to haejong) (value 50.82)) ; expenses $

; car gas
(expense (payer haejong) (value 35.00) (splits jon bastian haejong julee eohan))

; booze
(expense (payer eohan) (value 14.90) (splits jon haejong julee eohan))
(expense (payer jon) (value 14.90) (splits jon haejong julee eohan))

; car tolls
(expense (payer jon) (value 5.00) (splits jon bastian haejong julee eohan))

; Korean food
(expense (payer haejong) (value 77.00) (splits jon bastian haejong julee eohan))

; Movie
(expense (payer haejong) (value 20.00) (splits jon haejong))

; safeway runs
(expense (payer steffi) (value 1.99) (splits eitan stefan adam peter laura))
(expense (payer steffi) (value 46.85) (splits eitan stefan adam peter laura))
(payment (from stefan) (to steffi) (value 8)) ; safeway $

