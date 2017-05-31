;; (b^n/2)^2 = (b^2)^n/2
;;

(define (square x) (* x x))

(define (expt b n)
  (define (iter a b n)
    (cond ((= n 0) a)
          ((even? n) (iter a (square b) (/ n 2)))
          (else (iter (* a b) b (- n 1)))))
  (iter 1 b n))


(display (expt 2 5))
(display "\n")
(display (expt 2 6))
(display "\n")

;; in case we have a odd number just use (- n 1) and multiply the
;; result by b


