(define (cube x) (* x x x))
(define (identity a) a)
(define (inc a) (+ a 1))
(define (even? n)
  (= ( remainder n 2 ) 0))

(define (sum term a next b)
  (if (> a b)
    0
    ( + 
      (term a)
      (sum term (next a) next b)
    )
  )
 )

;Exercise 1.29
(define (koeff x a n)
  (cond ((= x n) 1) 
	((= x a) 1)
	((even? x) 2)
	((not (even? x) ) 4)
	)
  )

(define (simint f a b n)
  (define (h)
    (/ (- b a) n))

  (define (simterm x)
    (* (koeff x a n)
      (f
	(+ a (* x (h) )))
    )) 

   ( * (/ (h) 3) (sum simterm a inc n))
  )

