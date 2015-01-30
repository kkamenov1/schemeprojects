;ZADACHA 2
(define (filter pred? list)
  (cond
    ((null? list) '())
    ((pred? (car list)) (cons (car list) (filter pred? (cdr list))))
    (else (filter pred? (cdr list)))))



(define (uniq list)
  (cond
    ((null? list) '())
    (else (cons (car list)
                (uniq
                 (filter (lambda (x)
                           (cond
                             ((eq? x (car list)) #f)
                             (else #t)))
                         (cdr list)))))))