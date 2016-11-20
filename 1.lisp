(define (union lst1 lst2)
	(undupl (append lst1 lst2)))

(define (undupl ls)
  	(let cycle ((rest ls) (pending '()))
    (if (null? rest)
        pending
        (cycle (cdr rest)
                (if (member (car rest) (cdr rest))
                    pending
                    (cons (car rest) pending))))))

(display (union '(1 4 7 6) '(4 6 3 2)))