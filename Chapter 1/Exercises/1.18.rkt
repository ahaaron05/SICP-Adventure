#lang scheme

(define (even? x)
  (= (remainder x 2) 0))
(define (square x)
  (* x x))
(define (double x)
  (* x 2))
(define (halve x)
  (/ x 2))

; iterative exponentiation
(define (fast-expt-i b n)
  (define (iter a b n)
    (cond ((= n 0) a)
          ((even? n) (iter a (square b) (/ n 2)))
          (else (iter (* a b) b (- n 1)))))
  (iter 1 b n))

;(fast-expt-i 2 4)

; logarithmic recursive 
(define (multi-log a b)
   (cond ((= b 0) 0) ; base case
         ((even? b) (double (multi-log a (halve b))))
        (else (+ a (multi-log a (- b 1))))))

;(multi-log 2 7) 

; logarithmic iterative

(define (multi-log-i a b)
  (define (iter a b total)
    (cond ((= b 0) total)
          ((even? b) (iter (double a) (halve b) total))
          (else (iter a (- b 1) (+ total a)))))
  (iter a b 0))

(multi-log-i 5 4) ; should be = 20


