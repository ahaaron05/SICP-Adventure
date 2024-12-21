#lang scheme

(define (square x)
  (* x x))
(define (even? x)
  (= (remainder x 2) 0)) ; same as modulu in C


; iterative exponentiation
(define (fast-expt-i b n)
  (define (iter a b n)
    (cond ((= n 0) a)
          ((even? n) (iter a (square b) (/ n 2)))
          (else (iter (* a b) b (- n 1)))))
  (iter 1 b n))

(fast-expt-i 3 3)
