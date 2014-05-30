(defn largest-prime-factor [n]
  (loop [a n b 2 c 1]
    (if (zero? (dec a))
      c
      (let [[x y z] (if (zero? (mod a b))
                      [(/ a b) 2 b]
                      [a (inc b) c])]
        (recur x y z)))))

(println (largest-prime-factor 600851475143))
