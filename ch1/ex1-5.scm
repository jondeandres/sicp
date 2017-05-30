(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))


;; Using applicative-order evaluation the script never ends, since the call (p) never ends.

;; Using regular-order evaluation the scripts evaluates to the next:
(test 0 (p))

(if (= 0 0) 0 (p))

(if #t 0 (p))

0
