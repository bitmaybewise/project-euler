val multiples = List.range(1, 1000) filter (n => n % 3 == 0 || n % 5 == 0)
println(multiples.sum)
