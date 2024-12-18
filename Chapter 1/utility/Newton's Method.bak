#lang scheme

(define precision-threshold 0.001) ; for sqrt approximation
(define old-guess 0.0)

; returns the absolute value
(define (abs x)
(cond ((> x 0) x)
      (else (- x))))
     
; Squares a number x
(define (square x)
  (* x x))
; averages two numbers
(define (avrg x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) precision-threshold))

(define (improve-guess guess x)
  (avrg (/ x guess) guess))

(define (sqrter guess x)
  (if (good-enough? guess x)
      guess
      (sqrter (improve-guess guess x)
              x)))
; get sqrt of number using Newton's Method
(define (sqrt-this x)
  (sqrter 1.0 x))

(sqrt-this 0.1)