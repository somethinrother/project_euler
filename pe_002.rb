# Create a method that produces array of Fibonacci sequence numbers
def fibonacci_sequence(max_number, first_number, second_number)
  sequence = [first_number, second_number]

  loop do
    next_number = sequence[-1] + sequence[-2]
    return sequence if next_number > max_number
    sequence << next_number
  end
end

puts fibonacci_sequence(700, 1, 2)
# Filter the results of the Fibonacci array to only even numbers

# Sum the numbers
