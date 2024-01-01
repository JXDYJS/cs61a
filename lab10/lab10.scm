(define (over-or-under num1 num2) 'YOUR-CODE-HERE
(cond ((> num1 num2) 1)
((< num1 num2)-1)
((= num1 num2) 0))
)


(define (make-adder num) 'YOUR-CODE-HERE
(lambda (x) (+ x num)))

(define (composed f g) 'YOUR-CODE-HERE
(lambda (x) (f (g x))))

(define (repeat f n)
  (if (= n 1)
      (lambda (x) (f x))
      (composed f (repeat f (- n 1)))))


(define (max a b)
  (if (> a b)
      a
      b))

(define (min a b)
  (if (> a b)
      b
      a))

(define (gcd a b)
(if (= b 0)
a
(gcd (min a b) (modulo (max a b) (min a b)))))
