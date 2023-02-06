# PROBLEM
#   What is the problem?
#     write a method that takes a non empty string argument, and return the
#     middle character or characters
#   What is the goal
#     return the middle character/s as a string
#
#   INPUT: string
#   OUTPUT: string
#
# EXAMPLES
# center_of('I love ruby') == 'e'
# center_of('Launch School') == ' '
# center_of('Launch') == 'un'
# center_of('Launchschool') == 'hs'
# center_of('x') == 'x'
#
#   EXPLICIT RULES
#     string will NOT be empty
#     if string length is odd, return one character
#     if string length is even, return two characters
#   IMPLICIT RULES
#     return a string
#
# DATA STRUCTURES
#   How is the data organized?
#   What structures might we use in our solution?
#
# ALGORITHM
#   What steps will we use to solve the problem?
#   find size of the string
#   if size is odd, get string character of size / 2
#   if size is even, get two string characters from size / 2 -1
#   What helper methods do we need? What will they do?
#
# CODE
def center_of(string)
  size = string.size
  if size.odd? then string[(size / 2)]
  elsif size.even? then string[((size / 2) - 1),2]
  end
end

center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'
