(defun factorial(x)
    (if (> x 1)
        (+ x (factorial (- x 1)))
        1))

(defun display-fizz-buzz(start end)
    (setq line "")
    (if (= (mod start 3) 0)
        (setq line "fizz"))
    (if (= (mod start 5) 0)
        (setq line (concatenate 'string line "buzz")))
    (if (string-not-equal line "")
        (write-line line))
)

(defun fizzbuzz-recursive(start end incr)
    (block b-rec
        (if (> start end)
            (return-from b-rec '()))
        (display-fizz-buzz start end)
        (fizzbuzz-recursive (+ start incr) end incr)
    )
)

(defun fizzbuzz-iterative(start end incr)
    (loop
        (display-fizz-buzz start end)
        (setq start (+ start incr))
        (when (> start end) (return start))
    )
)

(fizzbuzz-iterative 0 100 1)
