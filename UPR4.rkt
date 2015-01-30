(define test-matrix '((1 2 3) (4 5 6) (7 8 9)))
(define (nth-elem matrix n)
    (if (null? matrix) '()
        (if (= n 0) (car matrix)
(nth-elem (cdr matrix) (- n 1)))))


(define (row matrix n)
  (nth-elem matrix n))

(define (column matrix n)
  (map (lambda (row) (nth-elem row n)) matrix))

(define (diagonal matrix)
  (diagonal-helper matrix 0))
(define (diagonal-helper matrix current)
  (if (null? matrix)
      '()
      (cons (nth-elem (car matrix) current) (diagonal-helper (cdr matrix) (+ current 1)))))

(define (add-rows row1 row2)
  (if (null? row1)
      '()
      (cons (+ (car row1) (car row2)) (add-rows (cdr row1) (cdr row2)))))

(define (scalar-list list1 n)
  (if (null? list1)
      '()
      (cons (* (car list1) n) (scalar-list (cdr list1) n))))
(define (scalar-product matrix scalar)
  (if (null? matrix)
      '()
      (cons (scalar-list (car matrix) scalar) (scalar-product (cdr matrix) scalar))))

(define (number-columns matrix)
  (length (car matrix)))
(define (transpose-helper matrix current)
  (if (> current (number-columns matrix))
      '()
      (cons (column matrix current) (transpose-helper matrix (+ current 1)))))
(define (transpose matrix)
  (transpose-helper matrix 0))

(define (dot-product v1 v2)
  (if (null? v1)
      0
      (+ (* (car v1) (car v2)) (dot-product (cdr v1) (cdr v2)))))

(define (matrix-prod m1 m2)
  (map (lambda (row) (map (lambda (column) (dot-product row column)) (transpose m2))) m1))
