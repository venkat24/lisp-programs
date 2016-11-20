(define (reverse lst)
	(if (null? lst)
		'()
		(cons (last lst) (cdr lst))))

(define (last lst)
    (if (null? (cdr lst)) 
    	(car lst)
        (last (cdr lst))))

(display (reverse '(4 5 6 2 3 1 6 9)))