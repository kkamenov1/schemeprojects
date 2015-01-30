(define (accumulate op initial-value f a next b)
  (if (> a b)
      initial-value
      (op (f a) (accumulate op initial-value f (next a) next b))))

(define (power x n)
  (accumulate * 1 (lambda (t) x) 1 (lambda (x) (+ x 1)) n))

(define (fact x)
  (accumulate * 1 (lambda (x) x) 1 (lambda (x) (+ x 1)) x))


(define (cosh-series x n)
  (accumulate + 0 (lambda (x n) (/ (power x (* 2 n)) (fact (* 2 n)))) 0 (lambda (x n) (/ (power x (+ n 2)) (fact (+ n 2)))) 1))