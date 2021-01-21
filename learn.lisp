(defun factorial(x)
    (if (> x 1)
        (+ x (factorial (- x 1)))
        1))

(write (factorial 3))
