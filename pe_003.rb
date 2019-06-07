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
