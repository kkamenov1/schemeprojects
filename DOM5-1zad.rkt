;1 zad
(define (fact n)
  (define (fact-helper n iter f)
    (if (> iter n)
        f
        (fact-helper n (+ iter 1) (* f iter))))
  (fact-helper n 1 1))
(define (sum-of-digits-fact n)
  (if(= n 0)
     0
     (+ (fact (remainder n 10)) (sum-of-digits-fact (quotient n 10)))))
(define (digits-factoriels n)
  (define (digits-helper n iter)
    (if(> iter n)
       '()
       (if (= (sum-of-digits-fact iter) iter)
           (append (list iter) (digits-helper n (+ iter 1)))
           (digits-helper n (+ iter 1)))))
  (digits-helper n 1))