require 'prime'

current_prime = 2

def next_prime(current_prime)
  current_prime += 1
  current_prime += 1 until Prime.prime?(current_prime)
  current_prime
end

# Define method that accepts the number to be factorized, divides the number by
# current_prime until it is not a whole number. It then increments the current_prime
# and starts again. This ends when the number to be factorized, having been
# divided, is prime itself

number = 600851475143

used_primes = []

loop do
  loop do
    break if (number.to_f / current_prime) % 1 != 0
    number = number.to_f / current_prime
  end

  used_primes << current_prime
  break if Prime.prime?(number.to_i) && number % 1 != 0 || number.to_i == 1
  current_prime = next_prime(current_prime)
end

puts used_primes.uniq[-1]
