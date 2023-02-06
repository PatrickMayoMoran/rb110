# PROBLEM
#   What is the problem?
#     given an integer, return the an integer with the digits reversed
#   What is the goal
#
#   INPUT: Integer
#   OUTPUT: Integer
#
# EXAMPLES
#
#   EXPLICIT RULES
#     drop leading zeroes
#   IMPLICIT RULES
#     integer will be positive
#     integer will be greater than 0
#
# DATA STRUCTURES
#   How is the data organized?
#   What structures might we use in our solution?
#
# ALGORITHM
#   What steps will we use to solve the problem?
#     convert integer to string
#     reverse string
#     convert string into integer
#     return integer
#   What helper methods do we need? What will they do?
#
# CODE

def reversed_number(number)
  number.to_s.reverse.to_i
end

reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1
