(define (identity a) a)
(define (inc a) (+ a 1))



(define (product term a next b)
  (define (iter a result)
    (if (> a b)
    	result
	    (iter (next a) (* (term a) result))))
  (iter a 1)
  )

;"Write an analogous procedure..."
  (define (prodint a b)
  (product identity a inc b)
  )

;"Also use 'product' to compute approximations to pi..."
(define (t x)


)


