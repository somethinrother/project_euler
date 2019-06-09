# https://projecteuler.net/problem=9

# Criteria:
  # The result must be a hash containing three consecutive numbers,
  # representing a, b, and c
  # e.g. { a: 3, b: 4, c: 5 }

# Plan
# Find all permutations of 3 number between 1 and 1000 where the numbers are greater than each other in order
# range = (1..1000).to_a
# permutations = range.permutation(3).to_a
# formatted_permutations = permutations.map { |p| { a: p[0], b: p[1], c: p[2] } }
# possible_triplets = formatted_permutations.select { |p| p[:a] < p[:b] && p[:b] < p[:c] }

# puts possible_triplets
# Now the result of that down to only options where a + b + c = 1000

# Narrow that array down to only the entries where a2 + b2 = c2
# Find the product of that abc

def subsets(n, max_k)
  results = []
  1.upto(max_k) {|k| results << permutations(n,k, results.last)}
  results
end

def permutations(n,k,previous_iteration=nil)
  return (1...n).collect {|x| [x]} if k == 1

  previous_iteration ||= permutations(n,k-1)
  (1...n).inject([]) do |result, to_add|
    result.concat( previous_iteration.inject([]) do |memo, perm|
      memo << (perm + [to_add]).sort unless perm.include?(to_add)
      memo
    end)
  end.uniq
end
