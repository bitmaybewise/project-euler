(defn fib [n]
  (cond
    (= n 0) 0
    (= n 1) 1
    :else (loop [x 0 y 1 z n]
            (if (= (dec z) 1)
              (+ x y)
              (recur y (+ x y) (dec z))))))

(defn fib-sum []
  (apply + 
    (filter even? 
      (take-while (partial > 4000000)
        (map fib (range))))))

(println (fib-sum))
