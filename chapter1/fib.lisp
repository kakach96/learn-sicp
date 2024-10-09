(defun fib (n)
    (cond ((= n 0) 0)
          ((= n 1) 1)
          ((>= n 2) (+ (fib (- n 1)) (fib (- n 2))))
    )
)

(format t "fib(6): ~a ~&" (fib 6))

(defun fib1 (n)
    (defun fib-iter (a b count)
        (if (>= count n)
            a
            (fib-iter (+ a b) a (1+ count))
        )
    )
    (fib-iter 0 1 0)
)

(format t "fib1(6): ~a ~&" (fib1 6))