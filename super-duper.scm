;To Run: app guile super-duper.scm
;AJ Trantham
#!/bin/guile
!#

;main function that recursivly copies elements of the list provided
(define (super-duper source count)
	(if (or (null? source)(not (pair? source)))
		source	
		(join (copy (super-duper (car source) count) count)  (super-duper (cdr source) count))
		)
)

;helper function to copy an emement count times
(define (copy elem count)
	(if (> count 0)
		(cons elem (copy elem (- count 1)))
		'())
)

;helper function to join lists together into 1 list
(define (join a b)
  (if (pair? a)
      (cons (car a) (append (cdr a) b))
      b))

(newline)
(display "Testing Super Duper...")

(newline)
(display "Test (super-duper 123 1)")
(newline)
(display "Expected Result: 123 ")
(newline)
(display "  Actual Result: ")
(display (super-duper 123 1))
(newline)

(newline)
(display "Test (super-duper 123 2)")
(newline)
(display "Expected Result: 123 ")
(newline)
(display "  Actual Result: ")
(display (super-duper 123 2))
(newline)

(newline)
(display "Test (super-duper '(ab) 4)")
(newline)
(display "Expected Result: (ab ab ab ab)")
(newline)
(display "  Actual Result: ")
(display (super-duper '(ab) 4))
(newline)

(newline)
(display "Test (super-duper '(x) 1)")
(newline)
(display "Expected Result: (x) ")
(newline)
(display "  Actual Result: ")(display (super-duper '(x) 1))
(super-duper '(x y) 2)
(newline)

(newline)
(display "Test (super-duper '(x y) 4)")
(newline)
(display "Expected Result: (x x x x y y y y) ")
(newline)
(display "  Actual Result: ")(display (super-duper '(x y) 4))
(newline)
(newline)

(display "Test (super-duper '(x y z) 3)")
(newline)
(display "Expected Result: (x x x y y y z z z) ")
(newline)
(display "  Actual Result: ")(display (super-duper '(x y z) 3))
(newline)

(newline)
(display "Test (super-duper '() 1)")
(newline)
(display "Expected Result: () ")
(newline)
(display "  Actual Result: ")(display (super-duper '() 1)) 
(newline)

(newline)
(display "Test (super-duper '((a b) y) 3)")
(newline)
(display "Expected Result: ((a a a b b b) (a a a b b b) (a a a b b b) y y y) ")
(newline)
(display "  Actual Result: ")
(display (super-duper '((a b) y) 3))
(newline)

(newline)
(display "Test (super-duper '(a (b y)) 3)")
(newline)
(display "Expected Result: (a a a (b b b y y y) (b b b y y y) (b b b y y y)) ")
(newline)
(display "  Actual Result: ") (display (super-duper '(a (b y)) 3))
(newline)

(newline)
(display "Test (super-duper '((a c) (b y)) 2)")
(newline)
(display "Expected Result: ((a a a c c c) (a a a c c c) (a a a c c c) (b b b y y y) (b b b y y y) (b b b y y y)) ")
(newline)
(display "  Actual Result: ") (display (super-duper '((a c) (b y)) 3))
(newline)
(newline)
(display "End of Tests")

