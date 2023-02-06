# PROBLEM: Print all odd numbers from 1 to 99, inclusive, to the console, 
# with each number on a separate line.
#
# INPUT
# OUTPUT
#
# EXAMPLES
# RULES
#   inclusive, so 1 and 99 are also printed
#   each number gets it's own line
# DATA STRUCTURES
#   range
# ALGORITHM
#   for each number in the range, 
#     if number is odd, print to screen
#     else, skip to next number
# CODE

(1..99).each do |number|
  puts number if number.odd?
end

value = 1
loop do
  puts value
  value += 2
  break if value > 99
end

1.upto(99) { |number| puts number if number.odd? }

