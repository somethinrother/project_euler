# Create method to return sum of the squares of all numbers in a range
def sum_of_each_squared_value_in_range(range)
  values = range.to_a
  values.map { |num| num ** 2 }.reduce(:+)
end

puts sum_of_each_squared_value_in_range(1..10)

# Create method to return the square of the sum of all number in a range

# Create method to find the difference between the two for the same range
