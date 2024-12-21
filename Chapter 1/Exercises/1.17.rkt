#lang scheme

; linear recursive version
(define (mult a b)
  (if (= b 0)
      0
      (+ a (mult a (- b 1)))))

;(mult 2 3)

; linear iterative
(define (mult-i a b)
  (define (iter count sum)
    (if (= count 0)
        sum
        (iter (- count 1) (+ sum a))))
  (iter b 0))

;(mult-i 2 3)

; ref: expt
(define (even? x)
  (= (remainder x 2) 0))
(define (square x)
  (* x x))
(define (double x)
  (* x 2))
(define (halve x)
  (/ x 2))

(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))
;(fast-expt 2 4)

; logarithmic growth
(define (multi-log a b)
   (cond ((= b 0) 0) ; base case
         ((even? b) (double (multi-log a (halve b))))
        (else (+ a (multi-log a (- b 1))))))
         
         

(multi-log 2 7) ; should be = 14





  