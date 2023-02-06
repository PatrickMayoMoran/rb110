# PROBLEM
#   Write a method that takes one argument - a positive integer, and returns
#   a string of alternating 1's and 0's, always starting with 1. The length
#   of the string should match the given integer
#
# GOAL
#   Given a positive integer, return a string of integers the length of the
#   given positive integer, alternating 1's and 0's, always start with 1
#
# RULES
#   EXPLICIT
#     return a string
#     always start with 1
#     alternate 1's and 0's
#     string length is given integer
#   IMPLICIT
#     don't have to worry about 0 or negative integers
# EXAMPLES
# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'
#
# DATA STRUCTURES
#   string
# 
# ALGORITHM
#   Initialize an empty string
#   initialize a counting variable at 0
#   start a loop
#     if count variable is even, append a 1 to the string
#     else if count variable is odd, append a 0 to the string
#     count increments by 1
#     if count == given integer, break out of loop
#   return integer
#
# EXTENSION
# GOAL
#   Given an integer and a starting number, return a string of alternating
#   1's and 0's that starts with starting number and is the size of integer
#
# ALGORITHM
#   initialize empty array
#   initialize second number to be 0 if start is 1 and 1 if start is 0
#   begin loop the size of given integer
#     if loop index is 0, append starting number to array
#     otherwise append other number
#   end loop
#
#   return the array joined to be a string
#
def stringy(integer)
  string = ''
  count = 0
  loop do
    string << '1' if count.even?
    string << '0' if count.odd?
    count += 1
    break if count == integer
  end
  string
end

def stringy_2(size, start=1)
  numbers = []
  other = start == 1 ? 0 : 1

  size.times do |index|
    number = index.even? ? start : other
    numbers << number
  end

  numbers.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

puts stringy_2(6,1) == '101010'
puts stringy_2(9,0) == '010101010'
puts stringy_2(4,1) == '1010'
puts stringy_2(7,0) == '0101010'
