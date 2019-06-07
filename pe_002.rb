# Create a method that produces array of Fibonacci sequence numbers
starting_numbers = [1, 2]
8.times do
  new_num = starting_numbers[-1] + starting_numbers[-2]
  starting_numbers << new_num
end

puts starting_numbers

# Filter the results of the Fibonacci array to only even numbers

# Sum the numbers
