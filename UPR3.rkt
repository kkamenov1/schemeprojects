(define (list-length list)
  (if (null? list) 0)
      (+ 1 (list-length (cdr list))))
      

(define (list-min-helper list min)
  (if (null? list) min)
  (if (> min (car list)) (list-min-helper (cdr list) (car list)))
  (list-min-helper (cdr list) min))
(define (list-min list)
  (if (null? list) -1
      (list-min-helper list (car list))))


(define (list-member? a list)
  (if (null? list) 0)
  (if (= (car list) a) #t
      #f)
  (list-member? a (cdr list)))
      

(define (list-append list1 list2)
  (if (null? list1) list2
      (cons (car list1) (list-append (cdr list1) list2))))

(define (f x) (* x x))
(define (map-list f list)
  (if (null? list) '())
  (map-list (f list)))

(define (reverse-list list)
  (if (null? list) list
      (append (reverse-list (cdr list)) (cons (car list) '()))))
  
      