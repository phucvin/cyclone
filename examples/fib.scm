(import (scheme base)
        (scheme write))

(define (fib n) 
  (if (< n 2) 
    1 
    (+ (fib (- n 2)) (fib (- n 1)))))

(write
  (fib 40))
