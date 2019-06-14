# https://projecteuler.net/problem=9

def is_a_right_angle_triangle?(a, b, c)
  a**2 + b**2 == c**2
end

def is_a_triplet?(a, b, c)
  c > b && b > a
end

def is_pythagorean_triplet?(a, b, c)
  is_a_right_angle_triangle?(a, b, c) && is_a_triplet?(a, b, c)
end

(1..1000).each do |a|
  (a..1000).each do |b|
    c = 1000 - (a + b)
    product = a * b * c
    puts product if is_pythagorean_triplet?(a, b, c)
  end
end
