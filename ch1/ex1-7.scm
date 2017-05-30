(define (square x) (* x x))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))


(define (good-enough? previous-guess guess x)
  (< (abs (- guess previous-guess))
     (* guess 0.001)))

(define (good-enough? previous-guess guess x)
  (< (/ (abs (- guess previous-guess))
        guess)
     0.0001))

(define (sqrt-iter previous-guess guess x)
  (if (good-enough? previous-guess guess x)
      guess
      (sqrt-iter guess
                 (improve guess x)
                 x)))

(define (sqrt x)
  (sqrt-iter 0 1.0 x))


(display (sqrt 25))

;; good-enough? now will receive the previous guess and check that the differences with the new one is minor than a fraction
