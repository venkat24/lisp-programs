(define (fib n)
  (if (< n 2) 
  		n 
  		(+ (fib (- n 1)) (fib (- n 2)))))
(define (fibonacci n)
  (map fib (count 1 (+ n 1))))

(define (count i n)
    (if (= i n)
          '()
              (cons i (count (+ i 1) n))))

(display (fibonacci 12))