#!/bin/guile
!#

; this is just a stub
(define (copy x) x)

(define (append a count)
      (if (= count 0)
	(copy a)
     (cons (cons (car a) (copy (append (copy a) (- count 1)))) (cdr a)))
)

(display (append '(a b c) 2))
(display "\n")
