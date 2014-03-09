mod3_5 x = mod x 3 == 0 || mod x 5 == 0

result = sum (filter mod3_5 [1..999])
