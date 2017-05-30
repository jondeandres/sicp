;; if col != 1 or col != size: f(row, col) = f(row - 1, col -1 ) f(row - 1, col + 1)
;; else: f(row, col) = 1

(define (f row col)
  (cond ((> col row) 0) ;; outside the triangle, res = 0
        ((< col 0) 0)   ;; idem
        ((= col 1) 1)   ;; for col 1, res = 1
        ((+ (f (- row 1) (- col 1))
            (f (- row 1) col)))))

(display (f 5 2)) ;; 4
