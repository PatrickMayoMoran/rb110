# PROBLEM
#   What is the problem?
#     create a program that outputs teddy's age, generating a random number 
#     from 20 to 200
#   What is the goal
#
#   INPUT: non
#   OUTPUT: string printed to screen (no return)
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
#   generate a random age for Teddy between 20 and 200
#   print age to screen in fun message
#   What helper methods do we need? What will they do?
#
# CODE

def teddys_age
  print "Please enter a name: "
  name = gets.chomp
  name = "Teddy" if name.empty?

  age = rand(20..200)
  puts "#{name} is #{age} years old!"
end

teddys_age
