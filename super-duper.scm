#!/bin/guile
!#

(define (super-duper source count)
	source
  	(if (null? source)
		(copy '()))	
		(cons (car source) (copy(super-duper (cdr source) (- count))))


)

;Makes a single copy of the element it is passed elem
(define (copy elem) 
	elem
)


;(display '(x))
(display "\n")
;(display (copy '(x y)))
(super-duper '(x y) 2)
(display "\n")
