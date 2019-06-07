sum = (1...1000).each_with_object([]) do |num, desired_nums|
  desired_nums << num if num % 3 == 0 || num % 5 == 0
end.reduce(:+)

puts sum
