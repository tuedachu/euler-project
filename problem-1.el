;; sum of multiple of 3  below 1000

(defun sum-multiple (n limit)
  (let ((k 0) (s 0))
    (while (< (* n (+ k 1)) limit)
      (setq k (+ k 1))
      (setq s (+ s (* n k))))))

(benchmark-run 10000 (- (+ (sum-multiple 3 1000) (sum-multiple 5 1000)) (sum-multiple 15 1000)))

(- (+ (sum-multiple 3 1000) (sum-multiple 5 1000)) (sum-multiple 15 1000))

(defun sum-multiple-clever (n limit)
  (let ((k (floor limit n)))
    (when (= (* n k) limit)
      (setq k (- k 1)))
    (* n (/ (* k (+ k 1) ) 2))))

(- (+ (sum-multiple-clever 3 1000) (sum-multiple-clever 5 1000)) (sum-multiple-clever 15 1000))

(benchmark-run 10000 (- (+ (sum-multiple-clever 3 1000) (sum-multiple-clever 5 1000)) (sum-multiple-clever 15 1000)))
