(people arya jon jeremy post pushkar peng karthik shauvik)

;; our rent
;; $422 + $468 + $515 = $1405
;; add $1 each for garbage
;; Jeremy: 30%
;; Jon: 33.3333%
;; Arya: 36.6666%

;; $1460 = $438 + $486.67 + 535.33
;;         (+16)  (+18.67) (+20.33)


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

;; hacky fix for rounding bug
(expense (payer jeremy) (value .01) (splits arya jon))

;; 4/30/09 3:06am failed attempt to go to taco bell
(expense (payer arya) (value 9.83) (splits arya jon jeremy))

;; 4/30/09 april rent & 4/30 shower curtain and rings and stuff
(expense (payer arya) (value 120) (splits arya jon jeremy))
(payment (from jeremy) (to arya) (value 40))


;; 5/03/09 5:17pm ikea
(expense (payer arya) (value 167.64)
         (splits
          (item 59.99 (jon)) ; verner swv chr
          (item 49.98 (jon)) ; 2 x franklin barstl
          (item 4.99 (jeremy)) ; svalka red wine [glasses]
          (item 3.49 (jon)) ; espressokaffee e

          (item 3.99 (jeremy jon arya)) ; bumerang cloth ; hangars
          (item 1.49 (jeremy jon arya)) ; borris dr mat 1 
          (item 19.99 (jeremy jon arya)) ; bomull pr curt ; 
          (item 2.99 (arya)) ; magasin cutlery
          (item 3.49 (arya)) ; measuring spoons
          (item 4.99 (arya)))) ; measuring cups

;; 5/02/09 9:46pm target
(expense (payer jeremy) (value 134.23)
         (splits
            ;; cleaning supplies
          (item 3.99 (arya jon jeremy)) ; scrub sponge
          (item 9.99 (jon)) ; broom
          (item 3.99 (arya jon jeremy)) ; lysol
            ;; grocery
          (item 1.00 (arya)) ; vitamin water
          (item 1.00 (jeremy)) ; vitamin water
            ;; health-beauty-cosmetics
          (item 6.14 (jeremy)) ; irish spring
          (item 6.14 (jon)) ; olay
          (item 1.94 (arya jon jeremy)) ; 2x softsoap dispensers
          (item 4.89 (arya jon jeremy)) ; softsoap refill
          (item 6.44 (jon)) ; dove
          (item 2.59 (jon)) ; crest
          (item 12.99 (arya)) ; rem 3 head
            ;; home
          (item 13.98 (jeremy arya)) ; red & white trash bins
          (item 4.49 (jon jeremy arya)) ; trash bags
          (item 2.54 (jon)) ; 2x 10 hangers
          (item 29.99 (arya)) ; smoothie blender
          (item 14.00 (jon jeremy arya)))) ; charmin pipo

;; 5/03/09 costco
(expense (payer arya) (value 108.71)
    (splits
        (item 40.00 (jon)) ;; silverware
        (item 50.00 (jeremy)) ;; microwave
        (item 9.00 (arya)))) ; granola bars

;; 5/03/09 chicken bakes
(payment (from jeremy) (to arya) (value 10))
(payment (from jon) (to arya) (value 3))
(expense (payer arya) (value 9.51) (splits arya jon jeremy))
(payment (from arya) (to jeremy) (value 3))

;; 5/01/09 washing machine
(payment (from arya) (to jeremy) (value 20))
(expense (payer jeremy) (value 90) (splits arya jon jeremy))


;; 5/03/09 5:17pm Walmart
(expense (payer jon) (value 166.31)
         (splits
          (item 3.97 (jon jeremy)) ; bathroom trashcan
          (item 3.97 (arya)) ; bathroom trashcan
          (item 26.00 (jon jeremy)) ; 2x bathroom mats
          (item 26.00 (arya)) ; 2x bathroom mats
          (item 15.96 (jon jeremy)) ; shower curtain
          (item 10.50 (arya)) ;  tshirts
          (item 16.97 (arya)) ;  saucepan
          (item 19.88 (jon)) ;  toaster
          (item 10.97 (jeremy)) ;  glasses
          (item 32.09 (jon arya jeremy)))) ;  the rest (food and stuff)

;; 4/15/09 insurance
(expense (payer jon) (value 18.00) (splits jon jeremy arya))

;; 5/05/09 home depot curtain rod
(expense (payer jon) (value 5.57) (splits jon jeremy arya))

;; 5/01/09 publix bbq 1 (81.60 - 17 from people)
(expense (payer jon) (value  64.60 ) (splits jon jeremy arya))

;; 4/30/09 diesel fuel for truck
(expense (payer jon) (value 11.00) (splits jon jeremy arya))

;; 4/15/09 renters insurance (may?)
(expense (payer jon) (value 5.57) (splits jon jeremy arya))

;; 5/09/09 salmon and asparagus
(expense (payer jon) (value 12.50) (splits jon jeremy arya))

;; 5/09/09 bbq #2
(expense (payer jon) (value 21.00) (splits jon jeremy arya))

;; 5/09/09 ikea chips and cheese if anyone cares 5/09/09
(expense (payer jon) (value 5) (splits jon arya))

;; 5/10/09 nancy's
(expense (payer arya) (value 32.71) (splits peng jon arya))

;; 5/01/09 internet
(expense (payer arya) (value 33.23) (splits jon arya jeremy))

;; 5/05/09 gapower electric bill
(expense (payer jon) (value 46.22) (splits jon arya jeremy))

;; 5/11/09 hdmi stuff
(expense (payer arya) (value 22.58)
         (splits  
          (item 9.48 (arya))
          (item 0.54 (arya))
          (item 4.62 (jon))))

;; 5/13/09 PS3 PixelJunk Monsters 
(expense (payer arya) (value 9.99) (splits arya jon))

;; 5/20/09 erenter insurance
(expense (payer jon) (value 18) (splits arya jon jeremy))

;; 5/20/09 check from jeremyemy
(payment (from jeremy) (to arya) (value 38.27))

;; 5/15/09 publix
(expense (payer arya) (value 20.22) 
	 (splits 
	  (item 7.99 (arya jon jeremy)) ; frozen strawberries
	  (item 2.49 (arya jon jeremy)) ; frozen blackberries
	  (item 2.29 (arya jon jeremy)) ; frozen orange juice
	  (item 1.67 (arya jon jeremy)) ; bananas
	  (item 2.00 (arya jon)) ; milk
	  (item 3.00 (arya jon)) ; bagels
	  ))

;; 5/17/09 publix
(expense (payer jon) (value 59.20) (splits arya jon))

;; 5/20/09 bbq and groceries from trader joes
(expense (payer jon) (value 61.24)
        (splits
        (item 3.29 (arya jon jeremy peng)) ; ground beef
        (item 3.26 (arya jon jeremy peng)) ; ground beef
        (item 2.29 (arya jon jeremy peng)) ; buns
        (item 3.49 (arya jon jeremy peng)) ; basil for artichoke thing
        (item 2.99 (arya jon jeremy peng)) ; artichoke for artichoke thing
        (item 2.69 (arya jon jeremy peng)) ; lettuce
        (item 2.99 (arya jon jeremy peng)) ; pepperjack cheese
        (item 2.99 (arya jon)) ; splitting chicken and hummus
        (item 26.41 (jon)) ; just jon's stuff
        ))

;; 5/29/09 publix
(expense (payer arya) (value 42.33)
	 (splits
	  (item 7.99 (arya)) ; turkey burgers
	  (item 2.69 (arya)) ; publix ice cream bars
	  (item 6.99 (arya)) ; frozen chicken breasts
	  (item 8.15 (arya jon)) ; lemon pepper chicken
	  (item 2.99 (arya jon)) ; cucumber dill hummus
	  (item 2.99 (arya jon)) ; black olive hummus
	  (item 2.79 (arya jon)) ; milk
	  (item 3.49 (arya)) ; christine's card
	  (item 2.49 (arya)) ; wheat flatbread
))

;; 6/08/09 comcast
(expense (payer arya) (value 33.23) (splits arya jon jeremy))

(payment (from peng) (to arya) (value 2.50))

;; 5/31/09
(expense (payer arya) (value 5.81) 
	 (splits
	  (item 3.39 (arya)) ; lighter for misha
	  (item 1.99 (arya)) ; 3-outlet adapter for kitchen
))

;; 6/4/09 tv mount
(expense (payer arya) (value 31.36) (splits arya jon jeremy))

;; 6/3/09 publix
(expense (payer jon) (value 42.33)
	 (splits
	  (item 8.15 (jon arya)) ; lemon pepper chicken
	  (item 2.50 (jon)) ; cereal
	  (item 3.45 (jon arya)) ; bagels
	  (item 6.49 (jon arya)) ; pasta sauce
	  (item 4.63 (jon arya)) ; past
	  (item 2.79 (jon arya)) ; grapefruit juice
	  (item 2.79 (jon arya)) ; milk
	  (item 2.59 (jon)) ; garlic
	  (item 1.99 (jon arya)) ; provolone
))

;; 6/6/09 publix sub
(expense (payer jon) (value 6.39) (splits jon jeremy))

;; 5/22/09 infinite energy gas bill
(expense (payer jon) (value 28.74) (splits arya jon jeremy))

;; 6/6/09 zuma sushi
(expense (payer jon) (value 36.50) (splits arya jon jeremy peng))
(expense (payer arya) (value 21.00) (splits arya jon jeremy peng))
(expense (payer jeremy) (value 24.16) (splits arya jon jeremy peng))

;; 06/01/09 publix
(expense (payer arya) (value 45.47)
	 (splits
	  (item 2.50 (arya)) ; cereal
	  (item 3.79 (arya)) ; apple juice
	  (item 3.57 (arya jon)) ; 3x autonuke veggies
	  ;; smoothie stuff
	  (item 1.66 (arya jon jeremy)) ; bananas
	  (item 11.99 (arya jon jeremy)) ; blueberries
	  (item 2.98 (arya jon jeremy)) ; 2x orange juice concentrate
	  (item 2.25 (arya jon jeremy)) ; some other kinda concentrate
	  (item 1.50 (arya jon jeremy)) ; apple juice concentrate
	  (item 2.99 (arya jon jeremy)) ; frozen rhubarb
	  (item 7.99 (arya jon jeremy)) ; frozen strawberries
))

;; 06/18/09 publix - smoothie fruit: mangoes, raspberries, strawberries, peaches
(expense (payer jeremy) (value 17.47) (splits arya jon jeremy))

;;
(payment (from peng) (to arya) (value 24))

;; aso plays led zeppelin
(expense (payer arya) (value 105) (splits arya jeremy karthik))

;; 06/25/09 bbq stuff
(expense (payer arya) (value 30) (splits arya jeremy))

;; 06/30/09 publix
(expense (payer jeremy) (value 101.61)
  (splits
    (item 2.59 (jeremy)) ; applesauce
    (item 2.69 (jeremy)) ; soymilk
    (item 2.69 (arya jon jeremy)) ; soymilk
	  (item 2.69 (jeremy)) ; chocolate soymilk
	  (item 3.99 (jeremy)) ; quick-cooking irish oatmeal
	  (item 7.99 (arya jon jeremy)) ; frozen strawberries
	  (item 1.31 (jeremy)) ; apples
	  (item 2.97 (jeremy)) ; clif bars
	  (item 0.55 (jeremy)) ; eggs
	  (item 2.50 (arya jon jeremy)) ; vanilla ice cream
	  (item 1.99 (jeremy)) ; mushshrooms
	  (item 0.83 (jeremy)) ; black beans
	  (item 1.69 (arya)) ; notebook
	  (item 2.54 (jeremy)) ; steak
	  (item 4.07 (jeremy)) ; salmon
	  (item 4.55 (arya)) ; quaker oatmeal
	  (item 3.79 (arya)) ; simply orange juice
	  (item 0.98 (jeremy)) ; green peppers
	  (item 1.69 (arya jon jeremy)) ; plain yogurt
	  (item 2.59 (arya)) ; applesauce
	  (item 3.49 (jeremy)) ; ice cream scooper
	  (item 8.39 (arya)) ; chicken
	  (item 5.29 (arya)) ; swiss cheese
	  (item 2.99 (arya jon jeremy)) ; frozen cherries
	  (item 3.57 (arya jon jeremy)) ; bananas
	  (item 2.29 (arya jon jeremy)) ; orange juice concentrate
	  (item 2.99 (arya jon jeremy)) ; frozen peaches
	  (item 3.29 (arya jon jeremy)) ; frozen pineapple
	  (item 3.49 (arya jon jeremy)) ; frozen raspberries
	  (item 1.89 (arya)) ; cottage cheese
	  (item 1.35 (arya jon jeremy)) ; cranberry cocktail concentrate
	  (item 3.79 (arya)) ; breakfast veggie sausage
))

;; 07/01/09 july water/sewer confusion
(expense (payer jeremy) (value 29.94) (splits jon))

;; 06/23/09 comcast
(expense (payer arya) (value 33.23) (splits jon jeremy arya))

;; 06/16/09 chinese
(expense (payer jon) (value 26.01)
	 (splits 
	  (item 8.75 (arya))
	  (item 7.39 (jeremy))
	  (item 7.94 (jon))))

;; 06/06/09 home depot bulb
(expense (payer arya) (value 6) (splits jon jeremy arya))

;; 05/13/09 home depot keys
(expense (payer arya) (value 9) (splits jon jeremy arya))


;; 07/05/09 moon tickets (the movie)
(expense (payer arya) (value 20) (splits karthik peng))
(payment (from karthik) (to arya) (value 40))

;; mandarin palace ii
(expense (payer jon) (value 11.56)
	 (splits 
	  (item 8.95 (arya)) ; "something with chicken"
	  (item 1.95 (jon)))) ; soup

;; camelli's
(expense (payer jon) (value 32.16)
	 (splits 
	  (item 15 (jon)) ; pizza, 1/2 chicken fingers ?
	  (item 15 (arya)))) ; chicken wrap, 1/2 chicken fingers, drink ?

;; 05/27/09 Fry's electronics
(expense (payer jon) (value 63.58)
	 (splits 
	  (item 20 (jon)) ; stupid razor
	  (item 40 (jon)))) ; wireless kbd/mouse

;; 6/14/09 renter insurance
(expense (payer jon) (value 18.00) (splits jon jeremy arya))

;; 06/19/09 gapower electric bill
(expense (payer jon) (value 141.44) (splits jon arya jeremy))

;; 07/06/09 video games live tickets
(expense (payer arya) (value 90) (splits arya jeremy peng))

;; 6/7/09 infinite energy gas bill
(expense (payer jon) (value 109.27) (splits arya jon jeremy))

;; Rent paid on August 2 (Jon's check didn't quite cover)
(payment (from jeremy) (to jon) (value 5.91))

;; 08/02/09 comcast
(expense (payer arya) (value 33.23) (splits arya jon jeremy))

;; 7/20/09 gapower electric bill 
(expense (payer jon) (value 188.32) (splits arya jon jeremy))

;; 07/28/09 infinite energy gas bill 
(expense (payer jon) (value 54.43) (splits arya jon jeremy))

;; Check - it's on your bed. Coming even on utils, etc
(payment (from jeremy) (to jon) (value 240.52))

;; at District 9
(payment (from karthik) (to arya) (value 5))

;; 08/18/09 publix
(expense (payer arya) (value 117.43)
	 (splits
	  (item 2.99 (arya jon jeremy))	      ; rhubarb
	  (item 3.29 (arya jon jeremy))	      ; pineapple
	  (item 7.99 (arya jon jeremy))	      ; strawberry
	  (item 7.00 (arya jon jeremy))	      ; blueberry
	  (item 3.56 (arya jon jeremy))	      ; baking soda
	  (item 3.49 (arya jon jeremy))	      ; dish soap
	  (item 1.84 (arya jon jeremy))	      ; bananas
	  (item 8.23 (arya jon))	              ; lunchmeat
	  (item 3.82 (arya jon))	              ; provolone
	  (item 2.99 (arya jon))	              ; string cheese
	  (item 2.99 (arya jon))	              ; spring mix
	  (item 8.07 (jon))	              ; frozen eats
	  (item 5.38 (jon))	              ; almond breeze
	  (item 1.19 (jon))	              ; beans
	  (item 3.49 (jon))	              ; cereal
	  (item 0.84 (jon))	              ; onion
	  (item 8.34 (jon))	              ; pasta
	  (item 1.57 (jon))	              ; peaches
	  (item 1.99 (jon))	              ; peas
	  (item 4.01 (jon))	              ; shrimp
	  (item 0.58 (jon))	              ; tomatoes
	  (item 1.99 (jon))	              ; mushrooms
	  (item 2.81 (jon))	              ; asparagus
	  (item 2.49 (jon))	              ; cheddar
	  (item 3.89 (jon))	              ; soup
	  (item 2.50 (jon))	              ; little fishes
	  (item 6.58 (arya))	              ; turkey sausage
	  (item 5.38 (arya))	              ; almond breeze
	  (item 1.64 (arya))	              ; apples
	  (item 1.85 (arya))	              ; oranges
	  ))

;; 7/14/09 renter insurance
(expense (payer jon) (value 18.00) (splits jon jeremy arya))

;; 8/14/09 renter insurance
(expense (payer jon) (value 18.00) (splits jon jeremy arya))

;; 8/20/09 gapower electric bill 
(expense (payer jon) (value 125.19) (splits arya jon jeremy))

;; 08/21/09 infinite energy gas bill 
(expense (payer jon) (value 46.43) (splits arya jon jeremy))

; sas
(expense (payer arya) (value 70.5) (splits peng))
(payment (from peng) (to arya) (value 160)) ; (extra 40?)

; sushi & karaoke  8/23
(expense (payer arya) (value 7) (splits (jon 6) (arya 1)))
(expense (payer arya) (value 60) (splits arya jon jeremy peng))
(payment (from jeremy) (to arya) (value 20))
(payment (from arya) (to jeremy) (value 5))

; parking permit
(expense (payer arya) (value 10) (splits jon))
; split the savings
(payment (from jon) (to arya) (value -50))
; pity credit
(payment (from arya) (to jon) (value -20))

; nancy's 
; ?? (payment (from peng) (to arya) (value -20))

; publix for school 8/22/09
(expense (payer arya) (value 15.50) (splits jon arya))

; paper towels 8/29/09
(expense (payer arya) (value 10.80) (splits jon jeremy arya))

;; export peng to arya.lisp
(payment (from peng) (to arya) (value -23.30))

; comcast 9/4/09
(expense (payer arya) (value 33.23) (splits jon jeremy arya))

;; 9/07/09 gapower electric bill 
(expense (payer jon) (value 121.38) (splits arya jon jeremy))

; 9/05/09 Tamarind Seed Thai after football game
; Arya, I lost the receipt, but I remember that yours was >= mine, so I'll just
; split it evenly here
(expense (payer jeremy) (value 33) (splits arya jeremy))

; chipotle 9/24
(expense (payer arya) (value 6.25) (splits jon))

; smoothie ingredients 9/5
(expense (payer arya) (value 22.2) (splits arya jon jeremy))

;; 9/29/09 renter insurance
(expense (payer jon) (value 18.00) (splits jon jeremy arya))

;; 09/21/09 infinite energy gas bill 
(expense (payer jon) (value 48.33) (splits arya jon jeremy))

;; 08/18/09 Whole Foods for fried catfish experiment
(expense (payer jon) (value 75.19)
	 (splits
	  (item 4.99 (arya jon))	       	; balsamic vinegar
	  (item 5.49 (arya jon))		; olive oil
	  (item 3.00 (arya))	      	; sparkling lime drink
	  (item 9.99 (jon))	      	; coffee that they overcharged 2bucks for 
	  (item 2.79 (arya jon))	      	; sugar
   	  (item 2.00 (arya jeremy jon))	    	; carrots
  	  (item 1.29 (arya jeremy jon))	      	; green onions
  	  (item 1.85 (arya jeremy jon))	      	; tomatoes
  	  (item 9.91 (arya jeremy jon))	      	; catfish
  	  (item 3.69 (arya jeremy jon))	      	; quinoa
  	  (item 5.99 (arya jon))	      	; turkey
  	  (item 0.90 (arya jeremy jon))	      	; fancy mushrooms 1
  	  (item 1.30 (arya jeremy jon))	      	; fancy mushrooms 2
  	  (item 1.80 (arya jeremy jon))	      	; fancy mushrooms 3
  	  (item 1.99 (arya jeremy jon))	      	; regular mushrooms
  	  (item 1.99 (arya jon))	      	; bread
  	  (item 10.85 (arya))	      	; granola
  	  (item 2.49 (arya jon))	      	; eggs
	  ))

; smoothie ingredients 9/5
(expense (payer arya) (value 22.2) (splits arya jon jeremy))

; publix 9/18
(expense (payer arya) (value 28.78)
	 (splits
	  (item 0.75 (arya)) ; gatorade
	  (item 3.99 (arya)) ; bbq book
	  (item 1.19 (arya jeremy jon)) ; smoothie stuff
	  (item 21.58 (arya jeremy jon)) ; heather's dip, holy shit. 2x guac, 2x beans, cheese, salsa, lettuce
))

; publix 9/05
(expense (payer arya) (value 22.20)
	 (splits
	  (item 17.56 (arya jeremy jon)) ; smoothie stuff
	  (item 3.79 (arya jon)) ; string cheese
))

; publix 9/29
(expense (payer arya) (value 112.40)
	 (splits
	  (item 16.71 (arya jon)) ; bread, sandwich meat, spring mix, ravioli, juice, milk
	  (item 19.48 (arya arya jon)) ; (peng) bbq (burgers, buns, tomato, onion, mushrooms, steak, fish, cheese)
	  (item 14.47 (arya jon jeremy)) ; smoothie stuff
	  (item 44.94 (jon)) ; jon stuff
	  (item 12.48 (arya)) ; arya stuff
))

; indian w/ nishant, liam, etc
(expense (payer arya) (value 50) (splits arya jeremy arya)) ; really arya, jeremy, peng

; October Rent
;; Jeremy  $423 - 56.38 = 366.62
;; Jon  $469 - 56.38 = 412.62 - 133.38 = 279.24
;; Arya $516 - 56.37 = 459.63
(expense (payer jeremy) (value 500) 
	 (splits 
	  (item 336.62 (jeremy))
	  (item 133.38 (jon))))
		
; Comcast 10/2
(expense (payer arya) (value 33.23) (splits jon jeremy arya))

;; 10/08/09 gapower electric bill
(expense (payer jon) (value 74.74) (splits jon arya jeremy))

;; 10/21/09 infinite energy gas bill
(expense (payer jon) (value 46.97) (splits arya jon jeremy))

; comcast 10/30
(expense (payer arya) (value 33.23) (splits jon jeremy arya))

; pre apocalypto and pre swing chipotle
(expense (payer arya) (value 14) (splits jon))
; swing admission
(expense (payer jon) (value 5) (splits arya))

; Jon's Nov rent
(expense (payer arya) (value 494.45) (splits jon))
(payment (from jon) (to arya) (value 451.13))

; 11/16 tp for your bunghole
(expense (payer arya) (value 7.01) (splits arya jon jeremy))

; 12/09/09 Comcast
(expense (payer arya) (value 33.23) (splits jon jeremy arya))

; Strawberries 12/7/09
(expense (payer arya) (value 8.39) (splits jeremy arya))

; 11/6/09 gapower electric bill
(expense (payer jon) (value 48.17) (splits jon arya jeremy))

; 12/10/09 gapower electric bill
(expense (payer jon) (value 54.17) (splits jon arya jeremy))

;; 12/18/09 infinite energy gas bill for nov/dec
(expense (payer jon) (value 217.42) (splits arya jon jeremy))

;; 10/14/09 renter insurance
(expense (payer jon) (value 18.00) (splits jon jeremy arya))

;; 11/14/09 renter insurance
(expense (payer jon) (value 18.00) (splits jon jeremy arya))

;; 12/14/09 renter insurance
(expense (payer jon) (value 18.00) (splits jon jeremy arya))

;; 01/05/10 costco run - (Jeremy's dad was in town)
(expense (payer jeremy) (value 257.80)
	 (splits
	  (item 13.29 (arya jon jeremy)) ; garbage bags
    (item 18.99 (arya jon jeremy)) ; tp
    (item 6.99 (arya)) ; soymilk
    (item 16.89 (arya jon jeremy)) ; paper towels
    (item 10.99 (jeremy)) ; tikka masala
    (item 9.49 (jeremy)) ; boca burgers
    (item 10.79 (jeremy)) ; potstickers
    (item 8.79 (jeremy)) ; lean cuisine
    (item 39.33 (arya)) ; razor blades
    (item 7.79 (jeremy)) ; raisin bran
    (item 13.59 (arya)) ; flax seed
    (item 14.99 (arya)) ; citrical
    (item 6.99 (jeremy)) ; clementines
    (item 19.29 (jeremy)) ; clif bars
    (item 8.59 (jeremy)) ; fruit cup
    (item 9.69 (jeremy)) ; tortellini
    (item 9.99 (jeremy)) ; spring rolls
    (item 12.69 (arya jon jeremy)) ; lysol wipes
    (item 8.49 (jeremy)); sun-dried tomotoes
	  ))

;; 01/06/10 balance for last month's water/utility
(expense (payer arya) (value 4.74) (splits jon jeremy arya))


(payment (from jeremy) (to jon) (value 141.63))

; 1/6/10 gapower electric bill
(expense (payer jon) (value 54.65) (splits jon arya jeremy))

;; 1/15/10 renter insurance
(expense (payer jon) (value 18.00) (splits jon jeremy arya))

;; 1/21/10 infinite energy gas bill
(expense (payer jon) (value 155.20) (splits arya jon jeremy))

;; 1/11/10 comcast
(expense (payer arya) (value 33.23) (splits jon jeremy arya))

;; 1/24/10 whole foods
(expense (payer arya) (value 7.50) (splits jon))

(payment (from arya) (to jon) (value 115.81))

;; 1/26/10 
(expense (payer arya) (value 13.50) (splits jon arya))

;; 1/27/10 - utils to jon (in the form of extra rent)
(payment (from jeremy) (to jon) (value 88.60))

;; 2/4/10 gapower electric bill
(expense (payer jon) (value 70.16) (splits jon arya jeremy))

;; 2/10/10 renter insurance
(expense (payer jon) (value 18.00) (splits jon jeremy arya))

;; 2/20/10 infinite energy gas bill
(expense (payer jon) (value 150.26) (splits arya jon jeremy))

;; 2/09/10 comcast
(expense (payer arya) (value 33.23) (splits jon jeremy arya))

;; star treks fees (ebay+paypal+usps) - (profit+s/h) = -59.89
(expense (payer arya) (value -60) (splits jon arya))

;; 3/1/10 March rent adjustment
(expense (payer arya) (value 80.57) (splits jon))
(expense (payer jeremy) (value 90.55) (splits jon))

;; 3/02/10 soy milk
(expense (payer arya) (value 7) (splits arya arya jon))

;; 3/09/10 comcast
(expense (payer arya) (value 37.55) (splits arya jon jeremy))

;; 3/13/10 renter insurance
(expense (payer jon) (value 18.00) (splits jon jeremy arya))

;; 3/23/10 infinite energy gas bill
(expense (payer jon) (value 151.06) (splits arya jon jeremy))

;; 3/12/10 gapower electric bill  CHECK AMOUNT & FIX DATE
(expense (payer jon) (value 64.44) (splits jon arya jeremy))

;; 4/1/10 April rent adjustment
(expense (payer arya) (value 50.46) (splits jon))
(expense (payer jeremy) (value 90.35) (splits jon))

;; 4/12/10 comcast
(expense (payer arya) (value 35.39) (splits arya jon jeremy))

;; 5/3/10 April 29-30 rent (two days under new lease)
(expense (payer arya) (value 3.66) (splits (jeremy .30) (jon .33333) (arya .36667)))

;; 5/3/10 May rent
(expense (payer arya) (value 1460) (splits (jeremy 438) (jon 486.67) (arya 535.33)))
(expense (payer arya) (value 85.4) (splits ;; utilities
				    (item 3.00 (arya jeremy jon)) ;; trash
				    (item 78.40 (arya jeremy jon)) ;; water+sewer
				    (item 4.00 (arya jeremy jon)))) ;; admin fee
(payment (from jeremy) (to arya) (value 479.36))

;; 4/14/10 gapower electric bill
(expense (payer jon) (value 62.76) (splits jon arya jeremy))

;; 5/03/10 infinite energy gas bill
(expense (payer jon) (value 69.25) (splits arya jon jeremy))

;; 4/13/10 renter insurance (went up this year for some reason)
(expense (payer jon) (value 19.83) (splits jon jeremy arya))

;; 4/11/10 Arya's Costco Goodies (paid on my USAA debit card)
(expense (payer jon) (value 169.23) (splits arya))

;; 4/11/10 Arya's Costco Gas (paid on my USAA debit card)
(expense (payer jon) (value 20.91) (splits arya))

;; Jon clearing his debts before the summer
(payment (from jon) (to arya) (value 236.78))

;; 5/11/10 Sony HDTV + s/h
(expense (payer arya) (value 879.98) (splits jon))
(payment (from jon) (to arya) (value 200)) ;; olevia tv

;; 5/12/10 comcast ;;;
(expense (payer arya) (value 35.39) (splits arya jon jeremy))

;; 6/12/10 comcast ;;;
(expense (payer arya) (value 35.39) (splits arya jon jeremy))

;; Summer 2010 rent
(expense (payer arya) (value 1460) (splits (jeremy 438) (jon 486.67) (arya 535.33))) ;; june rent
(expense (payer arya) (value 75.11) (splits jeremy jon arya)) ;; june water, sewer, admin
(expense (payer arya) (value 3) (splits jeremy jon arya)) ;; june trash
(payment (from jeremy) (to arya) (value 514.65))  ;; jeremy june rent
(payment (from jon) (to arya) (value 400.00)) ;; carlos june rent

(expense (payer arya) (value 1460.00) (splits (jeremy 438.00) (jon 486.67) (arya 535.33))) ;; july rent
(expense (payer arya) (value 58.72) (splits jeremy jon arya)) ;; july water, sewer, admin  (may 10 - jun 10, 2010)
(expense (payer arya) (value 3) (splits jeremy jon arya)) ;; july trash
(payment (from jeremy) (to arya) (value 475.13))  ;; jeremy july rent
(payment (from jon) (to arya) (value 400)) ;; carlos july rent

(expense (payer arya) (value 1460) (splits (jeremy 438) (jon 486.67) (arya 535.33))) ;; august rent
(expense (payer arya) (value 45.69) (splits jeremy jon arya)) ;; august water, sewer, admin (jun 10 - jul 10, 2010)
(expense (payer arya) (value 3) (splits jeremy jon arya)) ;; august trash
(payment (from jeremy) (to arya) (value 484.89))  ;; jeremy august rent
(payment (from jon) (to arya) (value 400)) ;; carlos august rent

;; 5/19/10 gapower electric bill
(expense (payer jon) (value 60.75) (splits jon arya jeremy))
;; 6/22/10 gapower electric bill
(expense (payer jon) (value 109.18) (splits jon arya jeremy))
;; 7/14/10 gapower electric bill
(expense (payer jon) (value 171.08) (splits jon arya jeremy))
;; 8/09/10 gapower electric bill
(expense (payer jon) (value 210.07) (splits jon arya jeremy))

;; 5/25/10 infinite energy gas bill
(expense (payer jon) (value 48.24) (splits arya jon jeremy))
;; 6/22/10 infinite energy gas bill
(expense (payer jon) (value 45.10) (splits arya jon jeremy))
;; 7/30/10 infinite energy gas bill
(expense (payer jon) (value 41.33) (splits arya jon jeremy))
;; 8/23/10 infinite energy gas bill
(expense (payer jon) (value 44.46) (splits arya jon jeremy))

;; 5/13/10 renter insurance
(expense (payer jon) (value 19.84) (splits jon jeremy arya))
;; 6/13/10 renter insurance
(expense (payer jon) (value 19.84) (splits jon jeremy arya))
;; 7/13/10 renter insurance
(expense (payer jon) (value 19.84) (splits jon jeremy arya))
;; 8/13/10 renter insurance
(expense (payer jon) (value 19.84) (splits jon jeremy arya))

;; 6/25/10 rent and a boss new TV
(payment (from jon) (to arya) (value 838.87)) 

;; 7/15/10 comcast
(expense (payer arya) (value 35.39) (splits arya jon jeremy))

;; 8/15/10 comcast
(expense (payer arya) (value 35.39) (splits arya jon jeremy))

;; 8/22/10 bought mattress from arya
(expense (payer arya) (value 200.00) (splits jon))

;; 8/22/10 ikea
(expense (payer arya) (value 48.58) (splits ;; before 8% tax
				     (item 39.99 (jon)) ;; coffee table
				     (item 4.99 (jon)))) ;; wok

;; Sept rent, utils, and clearing up e.t.
;; morbo:et arya$ ./run
;; ARYA: 189.84 (credit)
;; JON: 79.98 (credit)
;; JEREMY: -269.83 (debt)
(expense (payer arya) (value 368.37) (splits 
				      (item 535.33 (arya)) ;; arya's rent
				      (item 22.88 (arya)) ;; water / sewer / garbage / admin fees
				      (item -189.84 (jeremy)))) ;; clear e.t.
(expense (payer jon) (value 429.57) (splits 
				      (item 486.67 (jon)) ;; jon's rent
				      (item 22.88 (jon)) ;; water / sewer / garbage / admin fees
				      (item -79.98 (jeremy)))) ;; clear e.t.
(expense (payer jeremy) (value 730.71) (splits
				     (item 438 (jeremy)) ;; jeremy's rent
				     (item 22.88 (jeremy)) ;; water / sewer / garbage / admin fees
				     (item 269.83 (jeremy)))) ;; clear e.t.

;; 9/04/10 gapower electric bill
(expense (payer jon) (value 147.10) (splits jon arya jeremy))

;; 9/02/10 ikea bfast
(expense (payer jon) (value 4.00) (splits arya))

;; 9/03/10 dining area and regular lightbulbs from home depot
(expense (payer jon) (value 21.00) (splits jon jeremy arya))

;; 9/03/10 shower curtain liner from home depot
(expense (payer jon) (value 6.40) (splits jon jeremy))

;; 9/03/10 candle lightbulbs from home depot
(expense (payer jon) (value 4.30) (splits jeremy))

;; 9/05/10 comcast
(expense (payer arya) (value 35.39) (splits arya jon jeremy))

;; 9/23/10 santa fe kebab
(expense (payer arya) (value 5) (splits jeremy))

;; 9/24/10 olive oil
(expense (payer arya) (value 6) (splits arya jon jeremy))

;; 9/24/10 Jockey underwear from the Tanger Outlets
(expense (payer jeremy) (value 16.20) (splits jon))

;; 9/24/10 Felt bike -- cash needed day of, minus $100 for trainer
(expense (payer jeremy) (value 200.00) (splits jon))


;; Oct rent, utils, and clearing up e.t.
;; morbo:et arya$ ./run
;; ARYA: -27.44 (debt)
;; JON: -106.43 (debt)
;; JEREMY: 133.86 (credit)
(expense (payer arya) (value 587.88) (splits 
				      (item 535.33 (arya)) ;; arya's rent
				      (item 25.11 (arya)) ;; water / sewer / garbage / admin fees
				      (item 27.44 (jeremy)))) ;; balance e.t.
(expense (payer jon) (value 618.20) (splits 
				      (item 486.67 (jon)) ;; jon's rent
				      (item 25.10 (jon)) ;; water / sewer / garbage / admin fees
				      (item 106.43 (jeremy)))) ;; balance e.t.
(expense (payer jeremy) (value 329.24) (splits
				     (item 438 (jeremy)) ;; jeremy's rent
				     (item 25.10 (jeremy)) ;; water / sewer / garbage / admin fees
				     (item -27.44 (jeremy)) ;; balance e.t.
				     (item -106.43 (jeremy)))) ;; balance e.t.


;; chipotle 9/30/10
(expense (payer arya) (value 22.14) (splits
				     (item 6.25 (arya))
				     (item 2.35 (arya))
				     (item 5.95 (jon))
				     (item 5.95 (arya)))) ;; pushkar $6.43
				
;; 10/13/10 gapower electric bill
(expense (payer jon) (value 87.07) (splits jon arya jeremy))

;; 9/30/10 infinite energy gas bill
(expense (payer jon) (value 44.67) (splits arya jon jeremy))

;; 9/13/10 renter insurance
(expense (payer jon) (value 19.83) (splits jon jeremy arya))

;; Publix for emergency burger supplies
(expense (payer jon) (value 4.00) (splits arya)) ; for buns and pesto and what not

;; Costco paper towels for house
(expense (payer jon) (value 17.00) (splits jon jeremy arya))

;; Rock climbing pass
(expense (payer arya) (value 12.00) (splits jon))

;; hot jam 10/25/10
(expense (payer jon) (value 5) (splits arya))

;; takeshi's chalk bag
(expense (payer arya) (value 20) (splits jeremy arya))

;; 10/05/10 comcast
(expense (payer arya) (value 35.39) (splits arya jon jeremy))

;; Nov 2010 rent, utils, and clearing up e.t.

;; morbo:et arya$ ./run
;; ARYA: -27.44 (debt)
;; JON: -106.43 (debt)
;; JEREMY: 133.86 (credit)

;; morbo:et arya$ ./run
;; ARYA: -13.17 (debt)
;; JON: 91.16 (credit)
;; JEREMY: -77.99 (debt)

(expense (payer arya) (value 574.42) (splits 
				      (item 535.33 (arya)) ;; arya's rent
				      (item 25.92 (arya)) ;; water / sewer / garbage / admin fees
				      (item 13.17 (jon)))) ;; balance e.t.
(expense (payer jon) (value 421.41) (splits 
				      (item 486.67 (jon)) ;; jon's rent
				      (item 25.90 (jon)) ;; water / sewer/ garbage / admin fees
				      (item -13.17 (jon)) ;; balance e.t.
				      (item -77.99 (jon)))) ;; balance e.t.
(expense (payer jeremy) (value 541.89) (splits
				     (item 438 (jeremy)) ;; jeremy's rent
				     (item 25.90 (jeremy)) ;; water / sewer / garbage / admin fees
				     (item 77.99 (jon)))) ;; balance e.t.

;; 11/10/10 gapower electric bill
(expense (payer jon) (value 39.96) (splits jon arya jeremy))

;; 11/10/10 infinite energy gas bill
(expense (payer jon) (value 42.79) (splits arya jon jeremy))

;; 10/13/10 renter insurance
(expense (payer jon) (value 19.83) (splits jon jeremy arya))

;; 11/04/10 comcast
(expense (payer arya) (value 63.35) (splits arya jon jeremy))


;; morbo:et arya$ date; ./run
;; Wed Dec  1 10:56:57 EST 2010
;; ARYA: 8.04 (credit)
;; JON: 47.27 (credit)
;; JEREMY: -55.31 (debt)

(expense (payer post) (value 1460) (splits (jeremy 438) (jon 486.67) (arya 535.33))) ;; rent
(expense (payer post) (value 3) (splits jeremy jon arya)) ;; trash
(expense (payer post) (value 69.63) (splits jeremy jon arya)) ;; water / sewer / admin

(payment (from jeremy) (to post) (value 517.52))
(payment (from arya) (to post) (value 551.50))
(payment (from jon) (to post) (value 463.61))

;; 12/1/2010 Two instant-on CFL for living room fan
(expense (payer arya) (value 7.06) (splits arya jon jeremy))

;; 12/4/2010 Fox Bros take-out
(expense (payer arya) (value 31.10) (splits
				     (item 11.95 (jeremy)) ;; brisket plate
				     (item 8.95 (arya)) ;; bbq salad
				     (item 3.95 (arya)) ;; side fox-a-roni
				     (item 3.95 (arya)) ;; side of stew
))

;; 12/03/10 comcast
(expense (payer arya) (value 63.35) (splits arya jon jeremy))

;; 12/11/2010 coding chipotle 
(expense (payer arya) (value 12.50) (splits jeremy))

;; 2011 January rent
(expense (payer post) (value -250) (splits jeremy jon arya)) ;; carlos & philip referral
(expense (payer post) (value 1460) (splits (jeremy 438) (jon 486.67) (arya 535.33))) ;; rent
(expense (payer post) (value 3) (splits jeremy jon arya)) ;; trash
(expense (payer post) (value 4) (splits jeremy jon arya)) ;; admin
(expense (payer post) (value 18.50) (splits jeremy jon arya)) ;; water
(expense (payer post) (value 43.57) (splits jeremy jon arya)) ;; sewer

(payment (from jeremy) (to post) (value 525))
(payment (from jon) (to post) (value 339.69))
(payment (from arya) (to post) (value 414.38))

;; 11/13/10 renter insurance
(expense (payer jon) (value 19.83) (splits jon jeremy arya))
;; 12/13/10 renter insurance
(expense (payer jon) (value 19.83) (splits jon jeremy arya))

;; 12/09/10 gapower electric bill
(expense (payer jon) (value 53.06) (splits jon arya jeremy))

;; 11/30/10 infinite energy gas bill
(expense (payer jon) (value 72.50) (splits arya jon jeremy))

;; 1/15/11 infinite energy gas bill
(expense (payer jon) (value 116.59) (splits arya jon jeremy))

;; 1/09/11 costco
(expense (payer jon) (value 140.62) (splits
				     (item 90.95 (jon)) ;; vacuum + sales tax
				     (item 49.67 (jon)))) ;; everything else
;; 1/09/11 target
(expense (payer arya) (value 26.43) (splits arya jon)) ;; trash, recycle, poster

;; 1/09/11 dunkin donuts
(expense (payer arya) (value 8.43) (splits
				    (item 6.58 (arya jon)) ;; 2x tew rf flat
				    (item 1.69 (jon)) ;; coffee
				    (item -.39 (jon)) ;; coffee discount
))

;; 1/15/11 cash for bed buyers
(payment (from arya) (to jon) (value 20))

;; 1/28/11 infinite energy gas bill
(expense (payer jon) (value 151.79) (splits jon arya jeremy))

;; 1/13/11 renter insurance
(expense (payer jon) (value 19.83) (splits jon jeremy arya))
;; 2/13/11 renter insurance
(expense (payer jon) (value 19.84) (splits jon jeremy arya))

;; 2/28/11 infinite energy gas bill
(expense (payer jon) (value 146.40) (splits jon arya jeremy))

;; 1/14/11 gapower electric bill
(expense (payer jon) (value 63.78) (splits jon arya jeremy))
;; 2/10/11 gapower electric bill
(expense (payer jon) (value 75.82) (splits jon arya jeremy))

;; 2/04/11 comcast
(expense (payer arya) (value 27.50) (splits jon jeremy arya))

;; 1/23/11 stone summit
(expense (payer arya) (value 10) (splits jeremy))


;; 2011 February rent
(expense (payer post) (value -250) (splits jeremy jon arya)) ;; martin & tobias referral
(expense (payer post) (value 1460) (splits (jeremy 438) (jon 486.67) (arya 535.33))) ;; rent
(expense (payer post) (value 3) (splits jeremy jon arya)) ;; trash
(expense (payer post) (value 4) (splits jeremy jon arya)) ;; admin
(expense (payer post) (value 33.11) (splits jeremy jon arya)) ;; water & sewer

(payment (from jon) (to post) (value 500.00))
(payment (from arya) (to post) (value 754.11))
(payment (from jeremy) (to arya) (value 384.03))

;; 2011 March rent
(expense (payer post) (value 1460) (splits (jeremy 438) (jon 486.67) (arya 535.33))) ;; rent
(expense (payer post) (value 3) (splits jeremy jon arya)) ;; trash
(expense (payer post) (value 4) (splits jeremy jon arya)) ;; admin
(expense (payer post) (value 89.43) (splits jeremy jon arya)) ;; water & sewer


(payment (from jeremy) (to post) (value 500))
(payment (from jon) (to post) (value 362.27))
(payment (from arya) (to post) (value 698.16))

(payment (from arya) (to jon) (value 318.30))

;; 2/04/11 Comcast
(expense (payer arya) (value 27.55) (splits jeremy jon arya))

;; 3/07/11 Comcast
(expense (payer arya) (value 27.55) (splits jeremy jon arya))

;; 3/31/11 gapower electric bill
(expense (payer jon) (value 65.08) (splits jon arya jeremy))
;; 3/11/11 infinite energy gas bill
(expense (payer jon) (value 88.68) (splits jon arya jeremy))

;; 2011 April 1-28 Rent
(expense (payer post) (value 1362.67) (splits (jeremy .30) (jon .333) (arya .367))) ;; rent
(expense (payer post) (value 3) (splits jeremy jon arya)) ;; trash
(expense (payer post) (value 4) (splits jeremy jon arya)) ;; admin
(expense (payer post) (value 76.44) (splits jeremy jon arya)) ;; water & sewer
;; 2011 April 29-30 Rent
(expense (payer post) (value 101.33) (splits (pushkar .30) (jon .333) (arya .367))) ;; rent

(payment (from jeremy) (to post) (value 500))
(payment (from jon) (to post) (value 397.44))
(payment (from arya) (to post) (value 548.67))
(payment (from arya) (to post) (value 93.33))

;; 4/04/11 Comcast
(expense (payer arya) (value 27.55) (splits jeremy jon arya))

;; 4/18/11 Liam's glasses
(expense (payer arya) (value 100) (splits (arya 2) (jon 1))) ;; 1/3 to peng

;; 4/25/11 publix
(expense (payer arya) (value 28.31) 
	 (splits
	  (item 5.49 (arya jon pushkar)) ;; large garbage bags
	  (item 4.89 (arya jon pushkar)) ;; medium garbage bags
	  (item 9.79 (arya jon)) ;; laundry detergent
	  (item 6.28 (arya)))) ;; other

;; 2011 May 2011 Rent
(expense (payer post) (value 1520) (splits (pushkar .30) (jon .333) (arya .367))) ;; rent
(expense (payer post) (value 3) (splits pushkar jon arya)) ;; trash
(expense (payer post) (value 4) (splits pushkar jon arya)) ;; admin
(expense (payer post) (value 29.24) (splits jeremy jon arya)) ;; water
(expense (payer post) (value 70.31) (splits jeremy jon arya)) ;; sewer

;; 4/11/11 gapower electric bill
(expense (payer jon) (value 60.92) (splits jon arya jeremy))
;; 4/29/11 infinite energy gas bill
(expense (payer jon) (value 64.34) (splits jon arya jeremy))
;; 3/13/11 renter insurance
(expense (payer jon) (value 19.83) (splits jon jeremy arya))
;; 4/13/11 renter insurance
(expense (payer jon) (value 19.83) (splits jon jeremy arya))

;; egg whites for arya
(expense (payer jon) (value 12.00) (splits arya))

;; rent
(payment (from arya) (to post) (value 631.85))
(payment (from jon) (to post) (value 994.7))
(payment (from pushkar) (to jon) (value 492.44))

;; futon
(payment (from jeremy) (to arya) (value 100)) ;; in the form of futon 

;; chipotle for arya
(expense (payer jon) (value 6) (splits arya))

;; 5/11/11 gapower electric bill
(expense (payer jon) (value 59.79) (splits jon arya pushkar))

;; 5/13/11 karaoke melody
(expense (payer arya) (value 30) (splits jon)) ;; booze

;; June 2011 Rent
(expense (payer post) (value 1520) (splits (pushkar .30) (jon .333) (arya .367))) ;; rent
(expense (payer post) (value 3) (splits pushkar jon arya)) ;; trash             
(expense (payer post) (value 4) (splits pushkar jon arya)) ;; admin             
(expense (payer post) (value 19.86) (splits pushkar jon arya)) ;; water         
(expense (payer post) (value 48.95) (splits pushkar jon arya)) ;; sewer         

;; 5/21/11 chipotle for jon 
(expense (payer arya) (value 6) (splits arya))

;; 6/01/11 desk
(payment (from jeremy) (to pushkar) (value 100));; in the form of desk

;; 6/01/11 jeremy groceries
(payment (from jeremy) (to arya) (value 31.54))

;; rent checks for june
(payment (from jon) (to post) (value 1116.77))
(payment (from pushkar) (to jon) (value 601.20))
(payment (from arya) (to post) (value 479.04))

;; Utils for May
;; 5/16/11 gapower electric bill
(expense (payer jon) (value 59.79) (splits jon arya pushkar))
;; 5/31/11 infinite energy gas bill
(expense (payer jon) (value 53.07) (splits jon arya pushkar))
;; 5/13/11 renter insurance
(expense (payer jon) (value 19.83) (splits jon pushkar arya))

;; Utils for June
;; 6/10/11 gapower electric bill
(expense (payer jon) (value 109.52) (splits jon arya pushkar))
;; 6/22/11 infinite energy gas bill
(expense (payer jon) (value 34.31) (splits jon arya pushkar))
;; 6/13/11 renter insurance
(expense (payer jon) (value 19.83) (splits jon pushkar arya))

;; dish soap 
(expense (payer jon) (value 8.62) (splits jon pushkar arya))

;; June 2011 Rent
(expense (payer post) (value 1520) (splits (pushkar .30) (jon .333) (arya .367))) ;; rent
(expense (payer post) (value 3) (splits pushkar jon arya)) ;; trash
(expense (payer post) (value 4) (splits pushkar jon arya)) ;; admin
(expense (payer post) (value 98.09) (splits pushkar jon arya)) ;; water/sewer

;; June 19 2011 Fish oil 
(expense (payer jon) (value 15.86) (splits arya))

;; 6/19/11 chipotle
(expense (payer arya) (value 19.93) (splits (arya 6.25) (jon 6.25) (jon 5.95)))

;; 5/05/11 comcast
(expense (payer arya) (value 42.55) (splits jon pushkar arya))

;; 6/03/11 comcast
(expense (payer arya) (value 42.55) (splits jon pushkar arya))

;; 6/30/11 sold honda rebel to pushkar
(payment (from jon) (to pushkar) (value 1100.00))

;; 6/30/11 motorcycle and rent bucks from PK
(payment (from pushkar) (to jon) (value 1500.00))

;; 6/30/11 pushkars remaining rent for july
(payment (from pushkar) (to jon) (value 240.05))

;; 6/30/11 rent payments for july
(payment (from jon) (to post) (value 984.62))
(payment (from arya) (to post) (value 640.47))

;; matt & heather's wedding
;; hotel room 1st night
(expense (payer arya) (value 28) (splits jon))
;; hotel room 2nd night
(expense (payer arya) (value 47) (splits jon))
;; airport parking (Jon got $10 from Liam)
(expense (payer jon) (value 36) (splits (arya 14) (jon 22)))
;; sunscreen
(expense (payer jon) (value 2) (splits arya jon))
;; pizza refund
(expense (payer arya) (value -2) (splits jon))

;; 7/5/11 comcast
(expense (payer arya) (value 42.55) (splits jon pushkar arya))

;; 7/8/11 big olive oil
(expense (payer arya) (value 11) (splits arya jon))

;; Anja's farewell Marina
(expense (payer pushkar) (value 36.80) (splits jon))

;; 7/15/11 gapower electric bill
(expense (payer jon) (value 253.13) (splits jon arya pushkar))
;; 7/25/11 infinite energy gas bill
(expense (payer jon) (value 54.49) (splits jon arya pushkar))
;; 7/13/11 renter insurance
(expense (payer jon) (value 19.83) (splits jon pushkar arya))

;; July water, Aug Rent
(expense (payer post) (value 1520) (splits (pushkar .30) (jon .333) (arya .367))) ;; rent
(expense (payer post) (value 3) (splits pushkar jon arya)) ;; trash
(expense (payer post) (value 4) (splits pushkar jon arya)) ;; admin
(expense (payer post) (value 22.67) (splits pushkar jon arya)) ;; water
(expense (payer post) (value 55.19) (splits pushkar jon arya)) ;; sewer

;; 7/20/11 AMC
(expense (payer arya) (value 15) (splits jon pushkar))

;; 7/31/11 rent payments for august
(payment (from jon) (to post) (value 1016.45))
(payment (from arya) (to post) (value 588.41))
(payment (from pushkar) (to jon) (value 560.00))

;; 8/1/11 parking registration
(expense (payer arya) (value 10) (splits jon)) ; permit
(expense (payer arya) (value 100) (splits arya jon)) ; profit!
;; if you leave for spring, we can renegotiate

;; 8/15/11 gapower electric bill
(expense (payer jon) (value 221.62) (splits jon arya pushkar))
;; 8/15/11 infinite energy gas bill
(expense (payer jon) (value 47.87) (splits jon arya pushkar))
;; 8/13/11 renter insurance
(expense (payer jon) (value 19.83) (splits jon pushkar arya))

;; 8/19/11 Nancy's groupon
(expense (payer jon) (value 14.00) (splits jon arya))

;; 8/22/11 TP for our bungholes
;; pushkar will share
(expense (payer jon) (value 7.20) (splits jon pushkar))

;; 8/26/11 Jimmy Johns
(expense (payer pushkar) (value 5.10) (splits jon))

;; 6/19/11 Bookhouse Pub
(expense (payer pushkar) (value 31.50) (splits pushkar jon))

;; Sept 2011 Rent
(expense (payer post) (value 1520) (splits (pushkar .30) (jon .333) (arya .367)))
(expense (payer post) (value 3) (splits pushkar jon arya)) ;; trash
(expense (payer post) (value 4) (splits pushkar jon arya)) ;; admin
(expense (payer post) (value 96.31) (splits pushkar jon arya)) ;; water/sewer
(payment (from jon) (to post) (value 918.72))
(payment (from arya) (to post) (value 601.28))
(payment (from arya) (to post) (value 103.31))

(payment (from pushkar) (to jon) (value 530.00))

;; 8/4/11 comcast
(expense (payer arya) (value 42.55) (splits jon pushkar arya))
;; 9/2/11 comcast
(expense (payer arya) (value 42.55) (splits jon pushkar arya))
;; 10/5/11 comcast
(expense (payer arya) (value 42.55) (splits jon pushkar arya))

;; Oct 2011 Rent
(expense (payer post) (value 1520) (splits (pushkar .30) (jon .333) (arya .367)))
(expense (payer post) (value 3) (splits pushkar jon arya)) ;; trash
(expense (payer post) (value 4) (splits pushkar jon arya)) ;; admin
(expense (payer post) (value 30.32) (splits pushkar jon arya)) ;; water
(expense (payer post) (value 76.17) (splits pushkar jon arya)) ;; sewer
(payment (from arya) (to post) (value 441.70))
(payment (from jon) (to post) (value 1191.79)) ;; $616.46
(payment (from pushkar) (to jon) (value 600.00))

;; 9/16/11 gapower electric bill
(expense (payer jon) (value 233.81) (splits jon arya pushkar))
;; 9/9/11 infinite energy gas bill
(expense (payer jon) (value 52.95) (splits jon arya pushkar))
;; 9/13/11 renter insurance
(expense (payer jon) (value 19.83) (splits jon pushkar arya))

;; 11/4/11 comcast
(expense (payer arya) (value 42.55) (splits jon pushkar arya))

;; 10/16/11 gapower electric bill
(expense (payer jon) (value 113.02) (splits jon arya pushkar))
;; 10/9/11 infinite energy gas bill
(expense (payer jon) (value 53.51) (splits jon arya pushkar))
;; 10/13/11 renter insurance
(expense (payer jon) (value 19.83) (splits jon pushkar arya))

;; Nov 2011 Rent
(expense (payer post) (value 1520) (splits (pushkar .30) (jon .333) (arya .367)))
(expense (payer post) (value 3) (splits pushkar jon arya)) ;; trash
(expense (payer post) (value 4) (splits pushkar jon arya)) ;; admin
(expense (payer post) (value 32.95) (splits pushkar jon arya)) ;; water
(expense (payer post) (value 78.90) (splits pushkar jon arya)) ;; sewer
(payment (from arya) (to post) (value 645.54 ))
(payment (from jon) (to post) (value 993.31)) ;; $343.88
(payment (from pushkar) (to jon) (value 649.44))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;; Shavuik Moves in ;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; 11/16/11 gapower electric bill
(expense (payer jon) (value 65.11) (splits jon pushkar shauvik))
;; 11/9/11 infinite energy gas bill
(expense (payer jon) (value 63.94) (splits jon pushkar shauvik))
;; 11/13/11 renter insurance
(expense (payer jon) (value 19.83) (splits jon pushkar shauvik))
;; 12/4/11 comcast
(expense (payer jon) (value 42.55) (splits jon pushkar shauvik))

;; Dec 2011 Rent
(expense (payer post) (value 1520) (splits (pushkar .30) (jon .333) (shauvik .367)))
(expense (payer post) (value 3) (splits pushkar jon shauvik)) ;; trash
(expense (payer post) (value 4) (splits pushkar jon shauvik)) ;; admin
(expense (payer post) (value 27.71) (splits pushkar jon shauvik)) ;; water
(expense (payer post) (value 69.48) (splits pushkar jon shauvik)) ;; sewer
(payment (from jon) (to post) (value 1624.19))
;(payment (from shauvik) (to jon) (value 642.20))
;(payment (from pushkar) (to jon) (value 540.36))

;; 12/16/11 gapower electric bill
(expense (payer jon) (value 68.67) (splits jon pushkar shauvik))
;; 12/16/11 infinite energy gas bill
(expense (payer jon) (value 113.43) (splits jon pushkar shauvik))
;; 12/13/11 renter insurance
(expense (payer jon) (value 19.83) (splits jon pushkar shauvik))
;; 1/4/12 comcast
;(expense (payer jon) (value 42.55) (splits jon pushkar shauvik))

;; Jan 2011 Rent
(expense (payer post) (value 1520) (splits (pushkar .30) (jon .333) (shauvik .367)))
(expense (payer post) (value 3) (splits pushkar jon shauvik)) ;; trash
(expense (payer post) (value 4) (splits pushkar jon shauvik)) ;; admin
;(expense (payer post) (value ??.??) (splits pushkar jon shauvik)) ;; water
;(expense (payer post) (value ??.??) (splits pushkar jon shauvik)) ;; sewer
;(payment (from jon) (to post) (value 1624.19))
;(payment (from shauvik) (to jon) (value 642.20))
;(payment (from pushkar) (to jon) (value 540.36))