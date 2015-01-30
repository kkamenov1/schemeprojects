; КРИСТИЯН КАМЕНОВ 80952
; 1 zad
(define (quadrant x y)
  (cond
    ((and (> x 0) (> y 0)) 1) 
    ((and (= x 0) (= y 0)) 0)
    ((and (< x 0) (> y 0)) 2)
    ((and (< x 0) (< y 0)) 3)
    (else 4)))


; 2 zad 
(define (circle? x y radius)
  (if (<= (+ (* x x) (* y y)) (* radius radius))
      #t
      #f))

; 3 zad
(define (s a b c)
  (/ (+ a b c) 2))
(define (area a b c)
  (sqrt (* (s a b c) (- (s a b c) a) (- (s a b c) b) (- (s a b c) c))))