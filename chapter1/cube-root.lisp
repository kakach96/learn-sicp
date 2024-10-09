(defun good-enough (guess x)
    (format t "good-enough, tmp=~a~&" (- x (* guess guess guess)))
    (< (abs (- x (* guess guess guess))) 0.00001)
)

(defun cube-root-iter (x guess)
    (format t "x=~a, guess=~a~&" x guess)
    (if (good-enough guess x) 
        guess
        (cube-root-iter x (/ (+ (* 2 guess) (/ x (* guess guess))) 3))
    )
)

(defun cube-root (x)
    (cube-root-iter x 1.0)
)

(format t "cube-root 3: ~a~&" (cube-root 3))