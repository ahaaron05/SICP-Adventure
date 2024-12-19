#lang scheme

; Counts number different ways change can be given
(define (count-change amount)
  (define (first-denom coin-types)
    (cond ((= coin-types 1) 1)
          ((= coin-types 2) 5)
          ((= coin-types 3) 10)
          ((= coin-types 4) 25)
          ((= coin-types 5) 50)))
  (define (cc amount coin-types)
    (cond ((= amount 0) 1)
          ((or (< amount 0) (= coin-types 0)) 0)
          (else (+ (cc amount (- coin-types 1))
                   (cc (- amount (first-denom coin-types))
                       coin-types)))))
  (cc amount 5))

(count-change 11)