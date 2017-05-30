(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (dec a) b))))

(+ 4 1)
(inc (+ 3 1))
(inc (inc (+ 2 1)))
(inc (inc (inc (+ 1 1))))
(inc (inc (inc (inc (+ 0 1)))))
(inc (inc (inc (inc 1))))
(inc (inc (inc 2)))
(inc (inc 3))
(inc 4)
5

;; this process is a recursive process since we need to store the whole stack of recursive procedure calls

(define (+ a b)
  (if (= a 0)
      b
      (+ (dec a) (inc b))))


(+ 4 1)
(+ 3 2)
(+ 2 3)
(+ 1 4)
(+ 0 5)
5

;; this process is a iterative process, since the received variables on each procedure call is enough for the interpreter to know the step on the recursive procedure calls
