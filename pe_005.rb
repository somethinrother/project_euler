# https://projecteuler.net/problem=5

require_relative 'classes/numbers'

def smallest_number_divisible_by_given_range(range)
  divisors = range.to_a
  number = 1.0

  loop do
    divisors.each do |divisor|
      break if !Numbers.is_whole(number / divisor)
      has_remained_whole = Numbers.is_whole(number / divisor) && divisor == divisors[-1]
      return number.to_i if has_remained_whole
    end

    number += 1
  end
end

puts smallest_number_divisible_by_given_range(1..20)
