# PROBLEM
#   What is the problem?
#     Given an integer, create a right triangle with that many stars
#   What is the goal
#     output a triangle of stars to the console
#
#   INPUT: integer
#   OUTPUT: nothing - printing to the screen
#
# EXAMPLES
# triangle(5)
#     *
#    **
#   ***
#  ****
# *****

#   EXPLICIT RULES
#     bottom line has given integer many stars
#   IMPLICIT RULES
#     begins with empty line
#
# DATA STRUCTURES
#   How is the data organized?
#   What structures might we use in our solution?
#
# ALGORITHM
#   What steps will we use to solve the problem?
#     iterate through given integer
#       on each iteration, print iteration number of spaces
#       after that, print given integer - iteration number of stars
#   What helper methods do we need? What will they do?
#
# CODE
def triangle(size)
  size.times do |index|
    puts "#{' ' * (size-index)}#{'*' * index}"
  end
  puts '*' * size
end

triangle(3)
triangle(9)
#     iterate through given integer
#       on each iteration, print size -  iteration number of spaces
#       after that, print iteration number of stars
#
# EXTENSION
#   Make it possible to have right angle at any corner of the grid
#
def triangle_extension(size, corner)
  case corner
    when "top right" then top_right_triangle(size)
    when "top left" then top_left_triangle(size)
    when "bottom right" then bottom_right_triangle(size)
    when "bottom left" then bottom_left_triangle(size)
  end
end

def bottom_right_triangle(size)
  size.times do |index|
    puts "#{' ' * (size-index)}#{'*' * index}"
  end
  puts '*' * size
end

def top_left_triangle(size)
  start = size
  size.times do |i|
    puts "#{'*' * start}#{' ' * i}"
    start -= 1
  end
end

def bottom_left_triangle(size)
  spaces = size -1
  size.times do |i|
    puts "#{'*' * (i + 1)}#{' ' * spaces}"
    spaces -= 1
  end
end

def top_right_triangle(size)
  stars = size
  size.times do |i|
    puts "#{' ' * i}#{'*' * stars}"
    stars -= 1
  end
end

triangle_extension(8, "bottom right")
triangle_extension(8, "bottom left")
triangle_extension(8, "top right")
triangle_extension(8, "top left")
