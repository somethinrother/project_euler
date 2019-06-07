first_multipliers, second_multipliers = (100..999), (100..999)

palindromes = first_multipliers.each_with_object([]) do |first_multiplier, palindrome_array|
  second_multipliers.each do |second_multiplier|
    product = first_multiplier * second_multiplier
    palindrome_array << product if product.to_s == product.to_s.reverse
  end
end.max

puts palindromes
