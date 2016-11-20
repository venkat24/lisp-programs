(define index
        (lambda (e lst)
                (if (eq? lst '())
                        -1
                        (if (= (car lst) e)
                                0
								(+ 1 (index e (cdr lst)))))))
                                       
(display (index  6 '(4 5 6 3 2 4 5 1 2 4)))