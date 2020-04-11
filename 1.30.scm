(define (identity a) a)
(define (inc a) (+ a 1))

(define (sumint a b)
  (sum identity a inc b)
  )

(define (sum term a next b)
  (define (iter a result)
    (if (> a b)
	result
	(iter (next a) (+ (term a) result))))


  (iter a 0)
  )


;Lexical scope inom den närmaste "define":
(define (dd a b)

  (define (ee a b)
    (+ a b))

  (+ a b (ee 1 2)))
