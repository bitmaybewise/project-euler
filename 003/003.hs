largestPrimeFactor n = f n 2 1
                       where f a b c | a == 1         = c
                                     | a `mod` b == 0 = f (a `div` b) 2 b
                                     | otherwise      = f a (b + 1) c

main = putStrLn $ show $ largestPrimeFactor 600851475143
