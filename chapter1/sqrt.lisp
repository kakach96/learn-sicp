(defun good-enough (guess x)
    (format t "good-enough, tmp=~a~&" (- x (* guess guess)))
    (< (abs (- x (* guess guess))) 0.00001)
)

(defun sqrt-iter (x guess)
    (format t "x=~a, guess=~a~&" x guess)
    (if (good-enough guess x) 
        guess
        (sqrt-iter x (/ (+ guess (/ x guess)) 2))
    )
)

(defun msqrt (x)
    (sqrt-iter x 1.0)
)

(format t "msqrt 3: ~a~&" (msqrt 3))
(format t "sqrt 3: ~a~&" (sqrt 3))