(define (cube_root_iter guess x)
    (if (good_enough? guess x)
        guess
        (cube_root_iter (improve guess x)
                        x)))

(define (good_enough? guess x)
        (< (abs (- (cube guess) x)) 0.001))

(define (cube x) (* x x x))

(define (improve guess x)
        (/ (+ (/ x (square guess)) (* 2 guess))
           3))

(define (cube_root x)
        (cube_root_iter 1.0 x))

