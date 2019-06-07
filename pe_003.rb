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
      break if (number.to_f / current_prime) % 1 != 0
      number = number.to_f / current_prime
    end

    return current_prime if Prime.prime?(number.to_i) && number % 1 != 0 || number.to_i == 1
    current_prime = next_prime(current_prime)
  end
end

puts max_prime_factor(600851475143)
