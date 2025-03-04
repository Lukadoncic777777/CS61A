(define (over-or-under num1 num2) (if (> num1 num2) 1 (if(= num1 num2) 0 -1 )))
;  (if (> num1 num2)(1 if(== num1 num2)(0 -1))))

(define (make-adder num) 
  (lambda (inc) (+ inc num))
)
(define (composed f g) (lambda(x)(f (g x))))

(define (repeat f n) (if (= n 1) (lambda(x)(f x)) (composed f (repeat f (- n 1)))))

(define (max a b)
  (if (> a b)
      a
      b))

(define (min a b)
  (if (> a b)
      b
      a))

(define (gcd a b) (if (= 0 b) a (gcd b (modulo a b))))

; int gcd(int x,int y)
; {
;   if(!y)return x
;   return gcd(y,x%y)
; }