#lang scheme

(define (factorial x)
  (define (fact-iter product count)
    (if (> count x)
        product
        (fact-iter (* product count) (+ count 1))))
  (fact-iter 1 1))

; Correct, but not recursive, relies on direct calculation by factorial procedure
(define (pascal-val n k)
  (if (or (= n 0) (= k n))
      1
      (/ (factorial n) (* (factorial k)
                          (factorial (- n k))))))

; True recursive process
(define (pascal n k)
  (if (or (= n 0) (= k n))
      1
      (+ (pascal (- n 1) (- k 1))
         (pascal (- n 1) k))))

(pascal 1 3)
