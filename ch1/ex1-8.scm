(define (cube-root x)
  (cube-root-iter 1.0 2.0 x))


(define (cube-root-iter previous-guess guess x)
  (if (good-enough? previous-guess guess x)
      guess
      (cube-root-iter guess
                      (improve guess x)
                      x)))


(define (improve guess x)
  (average (/ x (square guess))
           (* guess 2)))

(define (average x y)
  (/ (+ x y)
     3))


(define (square x) (* x x))

(define (good-enough? previous-guess guess x)
  (< (/ (abs (- guess previous-guess))
        x)
     0.00001))


(display (cube-root 8))


;; We just need to change the improve and average functions that we had for square-root procedure but keeping the same structure for the others
