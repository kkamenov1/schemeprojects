(define (reverse-num a)
  (define (iter a rev)
    (cond
      ((= a 0) rev)
      (else (iter (quotient a 10) (+ (* rev 10) (remainder a 10)) ))
    ))
  
  (iter a 0))

(define (palindrom? a)
(= (+ a (reverse-num a)) (reverse-num (+ a (reverse-num a))) ))


(define (non-lychrel-sum a b)
    (define (iter current b sum)
      (cond 
        ((> current b) sum)
        ((palindrom? current) (iter (+ current 1) b (+ sum current)))
        (else (iter (+ current 1) b sum))
        ))
  (iter a b 0))