#lang scheme

(define (square x) (* x x))

(define (abs x)
  (if (> x 0)
      x
      (- x)))

(define (avg x y)
  (/ (+ x y) 2))


(define (sqrt x)
  (define (good-enough? guess)
    (< (abs (- (square guess) x)) 0.001))
  (define (improve guess)
    (avg (/ x guess) guess))
  (define (sqrt-iter guess)
    (if (good-enough? guess)
        guess
        (sqrt-iter (improve guess))))
  (sqrt-iter 1.0))

(sqrt 4)