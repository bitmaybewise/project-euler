isPalindrome :: Integer -> Bool
isPalindrome n = let normal   = show n
                     reverse' = reverse normal
                 in  normal == reverse'

largestPalindrome :: Integer
largestPalindrome = let numbers        = [999,998..100]
                        palindromes n  = filter isPalindrome $ map (\x -> x * n) numbers
                        allPalindromes = concat $ map palindromes numbers
                    in  maximum $ allPalindromes

main = putStrLn $ show largestPalindrome
