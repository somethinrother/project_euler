def fibonacci_sequence(max_number, first_number, second_number)
  sequence = [first_number, second_number]

  loop do
    next_number = sequence[-1] + sequence[-2]
    return sequence if next_number > max_number
    sequence << next_number
  end
end

sequence = fibonacci_sequence(4_000_000, 1, 2)

even_numbers = sequence.select { |num| num % 2 == 0 }

# Sum the numbers
