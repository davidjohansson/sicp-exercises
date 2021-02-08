(define (sqrt x) (* x x))
(define (sos x y) (+ (sqrt x) (sqrt y)))

(define (ssl x y z)
  (cond 
    ((and (<= x y) (<= x z)) (sos y z))
    ((and (<= y x) (<= y z)) (sos x z))
    (else (sos x y))    
    ) 
  )

(define (o a b) (+ a b))