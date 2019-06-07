# https://projecteuler.net/problem=3

require_relative 'numbers'

def is_whole(number)
  number % 1 == 0
end

def max_prime_factor(number)
  current_prime = 2

  loop do
    loop do
      # Break if the upcoming division would result in a number with a remainder
      break if !is_whole(number.to_f / current_prime)
      number = number.to_f / current_prime
    end

    # If the number is prime, then it is the largest prime factor
    is_prime = Numbers.prime?(number.to_i) && is_whole(number)
    return number.to_i if is_prime
    current_prime = Numbers.next_prime(current_prime)
  end
end

puts max_prime_factor(600851475143)
