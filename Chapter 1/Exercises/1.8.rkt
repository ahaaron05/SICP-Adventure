#lang scheme

(define precision 0.001) ; for sqrt approximation

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

(define (good-enough? g1 g2)
  (or (= g2 0)
      (< (/ (abs (- g2 g1)) g1)
         precision)))

(define (improve-guess guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (crter guess x)
  (let ((better (improve-guess guess x)))
   (if (good-enough? guess better)
      guess
      (crter better x))))

; get sqrt of number using Newton's Method
(define (crt-this x)
  (if (= x 0)
      0
      (crter 1.0 x)))

(crt-this 1e-7)