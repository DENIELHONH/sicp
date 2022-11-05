(define (sqrt_iter guess x)
    (if (good_enough? guess x)
	    guess
	    (sqrt_iter (improve guess x)
	               x)))

(define (improve guess x)
        (average (/ x guess)
                x))

(define (average x y)
        (/ (+ x y) 2))

(define (square x) (* x x))

(define (good_enough? guess x)
        (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
        (sprt_iter 1.0 x))

(sqrt 9)

(sqrt 45)

(average 33 4)