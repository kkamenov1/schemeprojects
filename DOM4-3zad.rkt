;ZADACHA 3
(define (set-difference s1 s2)
  (cond ((null? s1)
         '())
        ((not (member (car s1) s2))
         (cons (car s1) (set-difference (cdr s1) s2)))
        (else
         (set-difference (cdr s1) s2))))