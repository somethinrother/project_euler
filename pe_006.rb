def sum_of_each_squared_value_in_range(range)
  values = range.to_a
  values.map { |num| num ** 2 }.reduce(:+)
end

puts sum_of_each_squared_value_in_range(1..10)

def square_of_the_sum_of_values_in_range(range)
  values = range.to_a
  values.reduce(:+) ** 2
end

puts square_of_the_sum_of_values_in_range(1..10)
# Create method to find the difference between the two for the same range
