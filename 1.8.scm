(define (improve y x)
  (/ 
    (+ (/ x (* y y)) (* 2 y))
    3
    )
  )

(define (abs x)

  (if (< x 0)
      (- x)
      x )
  )

(define (qube x)
  (* x x x)
  )

(define (good-enough? guess x)
  (< (abs (- (qube guess) x)) 0.001)
  )


(define (qubert-iter guess x)
  (if (good-enough? guess x)
      guess
      (qubert-iter (improve guess x) x)
      )
  )

(define (qubert x)
  (qubert-iter 1.0 x)
  )
