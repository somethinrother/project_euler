# https://projecteuler.net/problem=1

sum = (1...1000).select { |num| num % 3 == 0 || num % 5 == 0 }.reduce(:+)

puts sum
