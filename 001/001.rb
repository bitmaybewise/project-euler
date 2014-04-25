puts (1..999).to_a.keep_if { |x| x % 3 == 0 || x % 5 == 0 }.reduce(:+)
