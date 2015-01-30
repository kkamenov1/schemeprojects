;1 zad
(define (less-than list1 a)
    (if(null? list1)
       '()
       (if(< (car list1) a)
          (append (list (car list1)) (less-than (cdr list1) a))
          (less-than (cdr list1) a))))