require 'prime'

module Computation
  def fibonacci_sequence(max_number, first_number, second_number)
    sequence = [first_number, second_number]

    loop do
      next_number = sequence[-1] + sequence[-2]
      return sequence if next_number > max_number
      sequence << next_number
    end
  end

  def next_prime(current_prime = 2)
    current_prime += 1
    current_prime += 1 until Prime.prime?(current_prime)
    current_prime
  end

  def prime?(number)
    Prime.prime?(number)
  end

  def is_whole(number)
    number % 1 == 0
  end

  def number_to_array(number)
    number.to_s.split('').map(&:to_i)
  end

  def digits_in_number(number)
    Math.log10(number).to_i
  end

  def max_prime_factor(number)
    current_prime = 2

    loop do
      loop do
        # Break if the upcoming division would result in a number with a remainder
        break if !EulerComputer.instance.is_whole(number.to_f / current_prime)
        number = number.to_f / current_prime
      end

      # If the number is prime, then it is the largest prime factor
      is_prime = EulerComputer.instance.prime?(number.to_i) && EulerComputer.instance.is_whole(number)
      return number.to_i if is_prime
      current_prime = EulerComputer.instance.next_prime(current_prime)
    end
  end
end
