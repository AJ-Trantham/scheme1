#!/bin/guile
!#

(define (super-duper source count)
  	
	(if (or (null? source) (not (pair? source)))
		(dup source)	
		(cons (copy (car source) count)  (super-duper (cdr source) count))
		)
)

(define (copy elem count)
	(if (> count 0)
		(cons elem (copy elem (- count 1)))
		'())
)

(define (dup source)
	source
)


;(display '(x))
;(display "\n")
(display "\n")
(display "\n")
(display (copy '(x) 10))
(display "\n")
(display "\n")
(display "\n")
(display (super-duper '(x) 1))
(display "\n")
(display "\n")
(display "\n")
(display (super-duper '(x y) 4))
(display "\n")
(display "\n")
(display "\n")
(display (super-duper 123 1))
(display "\n")
(display "\n")
(display "\n")
(display (super-duper '() 1)) 
(display "\n")
(display "\n")
(display "\n")
(display "Actual Result: ")
(display (super-duper '((a b) y) 3))
(display "\n")
(display "\n")

