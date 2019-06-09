# https://projecteuler.net/problem=9

# Criteria:
  # The result must be a hash containing three consecutive numbers,
  # representing a, b, and c
  # e.g. { a: 3, b: 4, c: 5 }

# Plan
# Find all permutations of 3 number between 1 and 1000 where the numbers are consecutive
def consecutive_combinations_of_n_length_within_range(range_size, combination_length)
  range = (1..range_size).to_a
  consecutive_combinations = range.each_cons(combination_length).to_a
  consecutive_combinations.map do |combination|
    {
      a: combination[0],
      b: combination[1],
      c: combination[2]
    }
  end
end

puts consecutive_combinations_of_n_length_within_range(1000, 3)
# Now the result of that down to only options where a + b + c = 1000

# Narrow that array down to only the entries where a2 + b2 = c2
# Find the product of that abc
