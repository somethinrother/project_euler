# https://projecteuler.net/problem=9

# Criteria:
  # The result must be a hash containing three consecutive numbers,
  # representing a, b, and c
  # e.g. { a: 3, b: 4, c: 5 }

# Plan
# Find all permutations of 3 number between 1 and 1000 where the numbers are consecutive
range = (1..1000).to_a
consecutive_combinations = range.each_cons(3).to_a
combinations = consecutive_combinations.map do |combination|
  {
    a: combination[0],
    b: combination[1],
    c: combination[2]
  }
end

# Now the result of that down to only options where a + b + c = 1000
# Narrow that array down to only the entries where a2 + b2 = c2
# Find the product of that abc
