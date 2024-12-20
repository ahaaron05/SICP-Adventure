#lang scheme

(define (square x)
  (* x x))
(define (even? x)
  (= (remainder x 2) 0)) ; same as modulu in C


; iterative exponentiation
(define (expt-i b n)
  (define (iter count a b)
    (cond ((= count 0) 1)
          ((even? n) (iter (/ count 2) a (square b)))
          (else (iter (- count 1) (* a b) b))))
  (iter n 1 b))

(fast-expt 2 4)