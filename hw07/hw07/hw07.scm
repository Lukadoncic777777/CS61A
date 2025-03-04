(define (square n) (* n n))

(define (pow base exp) 
  (
  ; (display base exp)
  ; (newline)
  if(= exp 0) 
    1 
    (
      if(= exp 1) 
      base 
      (
        if(= 1 (modulo exp 2))
        (* base (square (pow base (/ (- exp 1) 2))))
        (square (pow base (/ exp 2)))
      )
    )
  )
)

(define (repeatedly-cube n x)
  (if (zero? n)
      x
      (let ((y (repeatedly-cube (- n 1) x)))
        (* y y y))
        ))

(define (cddr s) (cdr (cdr s)))

(define (cadr s) (car (cdr s)))

(define (caddr s) (car (cddr s)))
