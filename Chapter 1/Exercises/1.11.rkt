#lang scheme

; Recursive Process
(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1)) (* 2 (f (- n 2)))
               (* 3 (f (- n 3))))))

; Iterative Process
(define (f-i n)
  (define (iter a b c count)
    (if (> count 3)
        c
        (iter b c (+ c (* 2 b) (* 3 a)) (+ count 1))))
  (if (< n 3)
      n
      (iter (f-i 0) (f-i 1) (f-i 2) 1)))

(f-i 5)