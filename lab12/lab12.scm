(define (if-program condition if-true if-false)
  (list 'if condition if-true if-false)
  )

(define (pow-expr n p) 
(if (= p 0) 1 (if (= p 1) (list '* n 1) (list '* (pow-expr n (- p 1)) n)))
)


(define (cddr s) (cdr (cdr s)))

(define (cadr s) (car (cdr s)))

(define (caddr s) (car (cddr s)))

(define (swap expr)
  (let ((op (car expr))
        (first (car (cdr expr)))
        (second (caddr expr))
        (rest (cdr (cddr expr))))
    (if (< (eval first) (eval second)) 
    (append (list op second first) rest)
    expr)))
