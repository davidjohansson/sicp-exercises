(define (average x y)
  (/ (+ x y) 2)
  )

(define (improve guess x)
  (average guess (/ x guess))
  )

(define (abs x)

  (if (< x 0)
      (- x)
      x )
  )

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001 )
  )

(define (square x)
  (* x x)
  )

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)
      )
  )

(define (sqrt x)
  (sqrt-iter 1.0 x)
  )


(define (new-if predicate then-clause else-clause)
 (cond (predicate then-clause)
      (else else-clause) 
       ) 
  )

(define (sqrt-iter2 guess x)
  (new-if (good-enough? guess x)
      guess
      (sqrt-iter2 (improve guess x) x)
      )
  )

(define (sqrt2 x)
  (sqrt-iter2 1.0 x)
  )


