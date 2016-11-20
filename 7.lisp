(define (shift L)  
	(if (null? (cdr L))  
		L   
		(if (< (car L) (cadr L))
			;;Changing the above < to > cause DESC sort
			(cons (car L) (shift (cdr L)))  
			(cons (cadr L) (shift (cons (car L) (cddr L))))  
  		)
	)
)  
(define (sort N L)   
  (cond ((= N 1) (shift L))  
        (else (sort (- N 1) (shift L)))))

;;Bubble Sort Algorithm

(display (sort 10 (list 5 9 0 3 2 8 1 4 7 6)))