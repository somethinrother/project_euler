# https://projecteuler.net/problem=9

# Criteria:
  # The result must be a hash containing three consecutive numbers,
  # representing a, b, and c
  # e.g. { a: 3, b: 4, c: 5 }

# Loop over numbers from 1 to max (1000) This is our a.
# For each number in the loop, we must also check numbers from a to 1000
# (this is acceptable, as we will have tested the lower numbered combo already)
# This number is our b.
# c is 1000 - (a+b).
# From this 3-way combination, we check if it is a pythagorean triplet
