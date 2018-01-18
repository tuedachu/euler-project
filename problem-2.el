;; Caluclate the sum of all even-valued Fibonacci numbers
;; up to 'limit'

(defun calculate-sum-even-valued-terms(limit)
  (let ( (fibo-term-1 0) (fibo-term-2 1) (fibo-term 0) (sum 0))
    (while (< fibo-term (+ 1 limit) )
      (setq fibo-term (+ fibo-term-1 fibo-term-2))
      (when (= (mod fibo-term 2) 0)
	(setq sum (+ sum fibo-term))
      )
	(setq fibo-term-2 fibo-term-1)
	(setq fibo-term-1 fibo-term))
    sum))

(calculate-sum-even-valued-terms 4000000)

