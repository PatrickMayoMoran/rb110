# Brute force iteration
def digit_list(number)
  arr = []
  loop do
    number, remainder = number.divmod(10)
    arr.unshift(remainder)
    break if number == 0
  end
  arr
end

#
## INTEGER DIGITS METHOD
# def digit_list(num)
#   num.digits.reverse
# end
#
## IDIOMATIC METHOD
def digit_list(number)
  number.to_s.chars.map(&:to_i)
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
