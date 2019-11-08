(define (frec n)
  (cond ( (< n 3) n )
	(else 
	  (+ 
	    (frec (- n 1)) 
	    (* 2 (frec (- n 2))) 
	    (* 3 (frec (- n 3)))
	    )
	  ) 
	)
  )
