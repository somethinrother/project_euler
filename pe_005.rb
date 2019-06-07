def is_whole(number)
  number % 1 == 0
end

divisors = (1..20).to_a

number = 232700000.0

final_number = nil

loop do
  puts number

  divisors.each do |divisor|
    break if !is_whole(number / divisor)
    final_number = number if is_whole(number / divisor) && divisor == 20
  end

  break if final_number
  number += 1
end

puts "#{number} is the smallest number that can be divided by 1-20 and remain whole"
# divide by the divisors in order and break if the number not whole
# If the divisors run out and the number is still whole, log it
