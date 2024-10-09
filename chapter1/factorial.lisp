(defun factorial (n)
    (defun factorial-iter (count product)
        (if (> count n)
            product
            (factorial-iter (1+ count) (* count product))
        )
    )
    (factorial-iter 1 1)
)

(format t "factorial 6: ~a ~&" (factorial 6))