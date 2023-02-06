# PROBLEM
#   What is the problem?
#     Create a retirement calculator that solicits current age and desired
#     retirement age, then outputs the current year, year someone will retire,
#     and how many years to go
#   What is the goal
#
#   INPUT: none initially - then a current age and desired retirement age
#   OUTPUT: no return value - current year, desired year, and years to go
#   displayed to the screen
#
# EXAMPLES
#
#   EXPLICIT RULES
#   IMPLICIT RULES
#     Whole age numbers
#     display in years
#
# DATA STRUCTURES
#   How is the data organized?
#   What structures might we use in our solution?
#
# ALGORITHM
#   What steps will we use to solve the problem?
#     Prompt user for current age
#     store current age
#     Prompt user for desired retirement age
#     store desired age
#
#     Display current year
#     Calculate and display given retirement year
#     display how many years to go
#   What helper methods do we need? What will they do?
#
# CODE
def retire
  print "What is your current age? "
  age = gets.chomp.to_i

  print "At what age would you like to retire? "
  retire_age = gets.chomp.to_i

  years_to_go = retire_age - age
  t = Time.now

  puts "The year currently is #{t.year}. You will retire in #{t.year + years_to_go}."
  puts "You have only #{years_to_go} years left to go! 'Good Luck'."
end

retire
