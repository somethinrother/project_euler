first_multipliers, second_multipliers = (100..999), (100..999)

palindromes = []

first_multipliers.each do |first_multiplier|
  second_multipliers.each do |second_multiplier|
    product = first_multiplier * second_multiplier
    palindromes << product if product.to_s == product.to_s.reverse
  end
end

puts palindromes.max
