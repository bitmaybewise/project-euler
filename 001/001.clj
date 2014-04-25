(defn mod-3-or-5 [x] (or (= (mod x 3) 0) (= (mod x 5) 0)))
(defn sum-of-multiples [] (apply + (filter mod-3-or-5 (range 1 1000))))
(println (sum-of-multiples))
