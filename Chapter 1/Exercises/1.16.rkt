#lang scheme

(define (square x)
  (* x x))
(define (even? x)
  (= (remainder x 2) 0)) ; same as modulu in C

(define (expt-s b n)
  (cond ((= n 0) 1)
        ((even? n) (square (expt-s b (/ n 2))))
        (else (* b (expt-s b (- n 1))))))

(expt-s 2 2)