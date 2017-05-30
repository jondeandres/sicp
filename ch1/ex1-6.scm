(define (square x) (* x x))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))


(define (good-enough? guess x)
  (< (abs (- (square guess)
             x))
     0.001))


(display (sqrt 25))

;;

(define (new-if predicate then-clause else-clause)
  (cond (predicate predicate then-clause)
        (else else-clause)))


;; this is the original sqrt-iter using the if form
;; (define (sqrt-iter guess x)
;;   (if (good-enough? guess x)
;;       guess
;;       (sqrt-iter (improve guess x)
;;                  x)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))


(display (sqrt 25))

;; On the sqrt-iter verison usin new-if, we can't avoid the interpreter to always evaluate the recursive call to sqrt-iter, even when the guess is enough. So, using mit-scheme, the result is similar to this:
;; In ice-9/boot-9.scm:
;;  108: 1 [#<procedure 55e334fc6100 at ice-9/boot-9.scm:100:6 (thrown-k . args)> vm-error ...]
;;   68: 0 [abort-to-prompt catch14 vm-error vm-run "VM: Stack overflow" ()]

;; ice-9/boot-9.scm:68:2: In procedure abort-to-prompt:
;; ice-9/boot-9.scm:68:2: Throw to key `vm-error' with args `(vm-run "VM: Stack overflow" ())'.
