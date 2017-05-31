;; sin x = x if x is sufficiently small, x < 0.1 radians
;; sin x = 3sin(x/3) - 4sin^3(x/3)

(define (cube x) (* x x x))

(define (p x) (- (* 3 x) (* 4 (cube x))))

(define (sine angle)
  (if (not (> (abs angle) 0.1))
      angle
      (p (sine (/ angle 3.0)))))



;; a)
;; 5 times, until reach angle = 4.9999999999999996e-2

;; b)

;; for angle(a) = 12.15

;; (sine 12.15)
;; (p (sine 4.05))
;; (p (p (sine 1.3499)))
;; (p (p (p (sine 0.44999))))
;; (p (p (p (p (sine 0.15)))))
;; (p (p (p (p (p 0.05)))))

;; space:
;; p is called 5 times, until we reach a < 0.1

;; each time we divide the angle by 3 until we reach a < 0.1
;; the number of times we can divide a by 3 is log3(a)

;; since we want to know how many until we reach 0.1, we can do:
;; log3(a) - log3(0.1) = log3(a/0.1)

;; so time growth is O(log3(a))

