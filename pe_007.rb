# https://projecteuler.net/problem=7

require 'prime'

def next_prime(current_prime)
  current_prime += 1
  current_prime += 1 until Prime.prime?(current_prime)
  current_prime
end

primes = [2]

until primes.length == 10000 do
  puts primes[-1]
  primes << next_prime(primes[-1])
end

puts next_prime(primes[-1])
