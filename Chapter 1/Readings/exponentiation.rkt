#lang scheme

; Recursive process (O(n) time & O(n) space)
(define (expt b n)
  (if (= n 0)
      1
      (* b (expt b (- n 1)))))

(expt 2 2)

; Iterative version (O(n) time & space)
(define (expt-i b n)
  (define (iter total count)
    (if (> count n)
        total
        (iter (* total b) (+ count 1))))
  (if (= n 0)
      1
      (iter 1 1)))

(expt-i 2 2)

; Successive Squaring version (FAST: O(log(n)) time & space)

(define (square x)
  (* x x))
(define (even? x)
  (= (remainder x 2) 0)) ; same as modulu in C

(define (expt-s b n)
  (cond ((= n 0) 1)
        ((even? n) (square (expt-s b (/ n 2))))
        (else (* b (expt-s b (- n 1))))))

(expt-s 2 2)