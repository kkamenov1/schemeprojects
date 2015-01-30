;(define (sum-divisors x)
;  (sum-divisors-helper x 1))

;(define (sum-divisors-helper x current)
;  (cond
;    ((= current x) 0)
;    ((= (remainder x current) 0) (+ current (sum-divisors-helper x (+ current 1))))
;         (else (sum-divisors-helper x (+ current 1)))))


;(define  (sum-divisors-helper x current sum)
;  (cond
;    ((= x current) sum)
;    ((= (remainder x current) 0) (sum-divisors-helper x (+ current 1) (+ sum current)))
;    (else (sum-divisors-helper x (+ current 1) sum))))

;(define (sum-divisors x)
;  (sum-divisors-helper x 1 0))


;(define (occurrences a x)
 ; (cond
  ;  ((= (remainder x 10) a) (+ (occurrences a (quotient x 10) 1))
   ; ((= x 0) 0)
    ;(else (= x a) 1))))

;(define (increasing? x)
 ; (if (not (= (quotient x 10) 0))
  ;    (if (>= (remainder number 10) (quotient (remainder number 100) 10))
   ;       (increasing? (quotient number 10))
    ;      #f
     ;     #t)))


;(define (prime?-helper x a)
 ; (if (<= x a) #t
  ;    (if (= (remainder x a) 0) #f
   ;       (prime?-helper x (+ a 1)))))
;(define (prime? x)
 ; (prime?-helper x 2))
  