; list of people
(people jon adam bastian jenay karl helen haejong julee)

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

; Rental car
(expense (payer jon) (value 130.63) (splits jon adam bastian jenay karl helen))

; friday night safeway stop (bfast)
(expense (payer adam) (value 28.11) (splits jon adam bastian jenay karl helen haejong julee))

; Raley's for lunch stuff on saturday
(expense (payer helen) (value 28.52) (splits jon adam bastian jenay karl helen haejong julee))

; Thai food
(expense (payer jenay) (value 149.82) (splits jon adam bastian jenay karl helen haejong julee))

; Scotch & stogies
(expense (payer adam) (value 64.00) (splits 
(item 10 (helen)) 
(item 27 (jon))
(item 27 (adam))))

; Raley's for ice cream and taters and stuff
(expense (payer helen) (value 14.43) (splits jon adam bastian jenay karl helen haejong julee))

; boat rental : (539.38-38.52)/7=71.55
(expense (payer jenay) (value 539.38) 
	(splits 
	(item 71.55 (jon)) ; 1/7
	(item 71.55 (adam)) ; 1/7
	(item 71.55 (jenay)) ; 1/7
	(item 71.55 (karl)) ; 1/7
	(item 71.55 (bastian)) ; 1/7
	(item 71.55 (haejong)) ; 1/7
	(item 38.52 (julee)) ; 1/14
	(item 71.55 (helen)) ; 1/7
	))
; payments
(payment (from bastian) (to jenay) (value 269.69)) ; half went on bastian's CC
(payment (from jenay) (to bastian) (value 70.00)) ; psssst!

; boat gas
(expense (payer karl) (value 55.13)  ; 64.13?
	(splits jon adam bastian jenay karl helen haejong julee))

; more boat gas
(expense (payer jon) (value 19.64) (splits jon adam bastian jenay karl helen haejong julee))

; sub that jon and bastian split
(expense (payer jon) (value 6.99) (splits jon bastian))

; sub that adam and karl split
(expense (payer karl) (value 6.99) (splits karl adam))

; gas in haejong's car
(expense (payer haejong) (value 50.00) (splits jon adam bastian jenay karl helen haejong julee))

; gas in jon's car
(expense (payer jon) (value 42.50) (splits jon adam bastian jenay karl helen haejong julee))	

; gas in jon's car
(expense (payer karl) (value 10.00) (splits jon adam bastian jenay karl helen haejong julee))	

; toll charge in haejong's car
(expense (payer bastian) (value 5.00) (splits jon adam bastian jenay karl helen haejong julee))	

; toll charge in jon's car on the way up
(expense (payer adam) (value 5.00) (splits jon adam bastian jenay karl helen haejong julee))	

; toll charge in jon's car on the way down
(expense (payer jon) (value 5.00) (splits jon adam bastian jenay karl helen haejong julee))