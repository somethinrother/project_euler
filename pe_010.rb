# https://projecteuler.net/problem=10

require_relative 'classes/numbers'

puts (1..2_000_000).select { |num| Numbers.prime?(num) }.reduce(:+)
