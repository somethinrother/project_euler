# https://projecteuler.net/problem=7

require 'prime'

def next_prime(current_prime)
  current_prime += 1
  current_prime += 1 until Prime.prime?(current_prime)
  current_prime
end

def find_nth_prime(n)
  (2..n).to_a.each_with_object([2]) do |_num, prime_numbers|
    prime_numbers << next_prime(prime_numbers[-1])
  end[-1]
end

puts find_nth_prime(10001)
