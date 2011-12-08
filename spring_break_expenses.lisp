
(people jon manohar richard harish archana rajiv carlos eohan leo alireza)

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

; Campers Inn (jon's payment)
(expense (payer jon) (value 148.11) (splits jon manohar richard harish archana rajiv carlos eohan leo alireza))

; Campers Inn (richard's payment)
(expense (payer richard) (value 148.12) (splits jon manohar richard harish archana rajiv carlos eohan leo alireza))

; Tent (eohan's payment)
(expense (payer eohan) (value 40) (splits jon manohar richard harish archana rajiv carlos eohan leo alireza))

; SleepingBag (eohan's payment)
(expense (payer eohan) (value 14) (splits archana leo))

; Gas
(expense (payer manohar)(value 75)(splits jon manohar richard harish archana rajiv carlos eohan leo alireza))
(expense (payer alireza)(value 74.38)(splits jon manohar richard harish archana rajiv carlos eohan leo alireza))
(expense (payer richard)(value 48.94)(splits jon manohar richard harish archana rajiv carlos eohan leo alireza))

;Applebees & waffle house(manohar's payment)
(expense (payer manohar)(value 21.75)(splits manohar harish))

;Parathas(manohar's payment)
(expense (payer manohar)(value 5)(splits harish))

;IHop(manohar's payment)
(expense (payer manohar)(value 20)(splits manohar eohan))

;Walmart chocolates, marshmellows etc.(manohar's payment)
(expense (payer manohar)(value 24)(splits jon manohar richard harish archana rajiv carlos eohan leo alireza))

;Walmart booze(manohar's payment)   note: removed richard since i didn't drink
(expense (payer manohar)(value 17.2)(splits jon harish archana rajiv eohan leo))

;Pizza de Roma
(expense (payer richard)(value 21.10)(splits carlos jon richard manohar))

;Sleeping Bags from Target(manohar's payment)
(expense (payer manohar)(value 81)(splits alireza eohan carlos))

;beer at camper's inn(harish's payment)  note: removed richard since i didn't drink
(expense (payer harish)(value 8.90)(splits jon harish archana rajiv eohan leo))

;food all arnd accurate to the nearest quarter(rajiv's payment)
(expense (payer rajiv)(value 30.00)(splits rajiv leo))

;Walmart BBQ stuff
(expense (payer jon)(value 26.80)(splits jon manohar richard harish archana rajiv carlos eohan leo alireza))

;Walmart stuff
(expense (payer alireza)(value 87.40)(splits jon manohar richard harish archana rajiv carlos eohan leo alireza))

;tent loosing fine
(expense (payer eohan)(value 6)(splits jon manohar richard harish archana rajiv carlos eohan leo alireza))











