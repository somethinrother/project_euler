# https://projecteuler.net/problem=7

require_relative 'pe_prime'

def find_nth_prime(n)
  (2..n).to_a.each_with_object([PePrime.current_prime]) do |_num, prime_numbers|
    prime_numbers << PePrime.next_prime(prime_numbers[-1])
  end[-1]
end

puts find_nth_prime(10001)
