require 'prime'

def next_prime(current_prime)
  current_prime += 1
  current_prime += 1 until Prime.prime?(current_prime)
  current_prime
end

def is_whole(number)
  number % 1 != 0
end

def max_prime_factor(number)
  current_prime = 2

  loop do
    loop do
      break if is_whole(number.to_f / current_prime)
      number = number.to_f / current_prime
    end

    is_prime_number = Prime.prime?(number.to_i) && is_whole(number)
    return current_prime if is_prime_number || number.to_i == 1
    current_prime = next_prime(current_prime)
  end
end

puts max_prime_factor(600851475143)
