require 'prime'

def next_prime(current_prime)
  current_prime += 1
  current_prime += 1 until Prime.prime?(current_prime)
  current_prime
end

def max_prime_factor(number)
  current_prime = 2

  loop do
    loop do
      # Break if the upcoming division would result in a number with a remainder
      break if (number.to_f / current_prime) % 1 != 0
      number = number.to_f / current_prime
    end

    # If the number is prime, then it is the largest prime factor
    is_prime = Prime.prime?(number.to_i) && number % 1 == 0
    return number.to_i if is_prime
    current_prime = next_prime(current_prime)
  end
end

puts max_prime_factor(600851475143)
