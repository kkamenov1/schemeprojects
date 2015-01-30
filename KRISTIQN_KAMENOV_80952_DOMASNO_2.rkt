;ZADACHA 1
(define (prime-helper x current)
  (cond
    ((= current x) #t)
    ((= (remainder x current) 0) #f)
    (else (prime-helper x (+ current 1)))))

(define (prime? x)
  (prime-helper x 2))


(define (goldbach-helper x i)
  (if (= i (- x 1))
      2
      (if (and (prime? i) (prime? (- x i)))
          (min i (- x i))
          (goldbach-helper x (+ i 1)))
      ))

(define (goldbach x)
  (goldbach-helper x 2))


;ZADACHA 2
(define (count-digits x)
  (define (cd-helper x i)
    (if (= x 0) 
        i
        (cd-helper (quotient  x 10) (+ i 1))))
  (cd-helper x 0))

(define (occurrences a x)
  (cond
    ((= x 0) 0)
    ((= (remainder x 10) a) (+ (occurrences a (quotient x 10)) 1))
    (else (occurrences a (quotient x 10)))))

(define (pandigital? x)
  (define (pandigital-helper x i b)
    (if (< i 1) 
        b
        (if (= (occurrences i x) 0)
            (pandigital-helper x (- i 1) #f)
            (pandigital-helper x (- i 1) #t))))
  (pandigital-helper x (min (count-digits x) 9) #f))

(pandigital? 312)
            
            
        
        