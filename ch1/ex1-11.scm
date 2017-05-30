;;  if n<3 and f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3) if n> 3.

;; if n < 3 -- f(n) = n
;; if n >= 3 -- f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3)

;; recursive process

(define (f-1 n)
  (cond ((< n 3) n)
        (else (+ (f-1 (- n 1))
                 (* 2 (f-1 (- n 2)))
                 (* 3 (f-1 (- n 3)))))))

(display (f-1 7))

;; iterative process

;; f(3) = f(2) + f(1) + f(0) => a, b, c = 2, 1, 0
;; f(4) = f(3) + 2f(2) + 3f(1)
;; f(5) = f(4) + 2f(3) + 3f(2)


(define (f-2 n)
  (define (f-2-iter a b c n)
    (if (< n 3)
        a
        (f-2-iter (+ a (* 2 b) (* 3 c))
                  a
                  b
                  (- n 1))))

  ;; we start with n = 3, so a = 2, b = 1, c = 0
  (f-2-iter 2 1 0 n))

(display "\n")
(display (f-2 7))
