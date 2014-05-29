fib 0 = 0
fib 1 = 1
fib x = let f = \a b c -> if (c - 1) == 1
                          then a + b
                          else f b (a + b) (c - 1)
        in f 0 1 x

fibSum = sum $ takeWhile (< 4000000) $ map fib [3,6..]

main = putStrLn $ show fibSum
