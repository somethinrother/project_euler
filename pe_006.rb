def sum_of_each_squared_value_in_range(range)
  values = range.to_a
  values.map { |num| num ** 2 }.reduce(:+)
end

def square_of_the_sum_of_values_in_range(range)
  values = range.to_a
  values.reduce(:+) ** 2
end

def difference_between_the_two(range)
  sum_of_squares = sum_of_each_squared_value_in_range(range)
  square_of_sum = square_of_the_sum_of_values_in_range(range)

  (sum_of_squares - square_of_sum).abs
end

puts difference_between_the_two(1..100)
