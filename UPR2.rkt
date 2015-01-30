(define (sum-helper a b sum)
  (if (= a b) (+ sum a)
      (sum-helper (+ a 1) b sum)))
(define (sum a b)
  (sum-helper a b 0))


(define (square x)
  (* x x))

(define (sum-squares-helper a b sum)
  (if (= a b) (+ sum (square a)
      (sum-squares-helper (+ a 1) b (+ sum (square a))))))
(define (sum-squares a b)
  (sum-squares-helper a b 0))


(define (sum-progression-helper a b sum)
      (if (= a b) (+ sum (square b))
          (sum-progression-helper (+ a 2) b (+ sum (square a)))))
(define (sum-progression a b)
  (sum-progression-helper a b 0))

(define (accumulate op init_value f a next b)
  (accumulate-helper op f a next b init_value))
 
(define (accumulate-helper op f a next b sum)
  (if (> a b)
      sum
      (accumulate-helper op f (next a) next b (op sum (f a)))))

(define (power x n)
  (accumulate * 1 (lambda (t) x) 1 (lambda (x) (+ x 1)) n))


(define (func x n)
  (accumulate + 0 (lambda (t) x) 0 (lambda (x) (+ x 1)) n))


(define (repeated f x n)
  (if (= n 0) x
      (repeated f (f x) (- n 1))))


(define EPS 0.0000001)

(define (derivative f)
  (lambda (x)
    (/ (- (f (+ x EPS)) (f x)) EPS)))
                