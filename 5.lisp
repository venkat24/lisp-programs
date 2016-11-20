(define (list-count x lst)
    (if (null? lst)
            0
			(if (= x (car lst))
                    (+ 1 (list-count x (cdr lst)))
                    (list-count x (cdr lst)))))
                        
(display (list-count  5 '(4 5 6 3 2 4 5 1 2 4)))