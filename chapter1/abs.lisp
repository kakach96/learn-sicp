(defun mabs (i)
    (if (>= i 0) i (- i))
)

(defvar x)
(setf x (mabs -1))
(format t "x=~a ~&" x)
(list-all-packages)