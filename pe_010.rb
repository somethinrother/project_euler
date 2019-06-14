# https://projecteuler.net/problem=10

require_relative 'classes/numbers'

# For all numbers from 1 - 2000000, check if the number is prime, filter out if
# not. Sum what remains.

puts (1..2_000_000).select { |num| Numbers.prime?(num) }.reduce(:+)
