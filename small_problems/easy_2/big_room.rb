# PROBLEM
#   What is the problem?
#     solicit width and length of a room and then display the square metrage
#     and footage of the room
#   What is the goal
#
#   INPUT: none given, but then two string inputs from user
#   OUTPUT: nothing returned, but text printed to screen
#
# EXAMPLES
#
#   EXPLICIT RULES
#   IMPLICIT RULES
#
# DATA STRUCTURES
#   How is the data organized?
#   What structures might we use in our solution?
#
# ALGORITHM
#   What steps will we use to solve the problem?
#     Ask user for width
#     convert width to number
#     ask user for length
#     convert length to number
#     calculate area
#     convert meter area to square foot area
#     display both areas
#   What helper methods do we need? What will they do?
#
# CODE

def square_feet
  print "Please enter the width in meters: "
  width = gets.chomp.to_f

  print "Please enter the length in meters: "
  length = gets.chomp.to_f

  area = length * width
  puts "The area of the room is #{area} square meters. (#{area * 10.7639} square feet)"
end

square_feet
