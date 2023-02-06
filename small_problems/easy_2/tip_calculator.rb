# PROBLEM
#   What is the problem?
#     solicit a bill amount and a tip rate, then return a tip amount and 
#     total bill amount
#   What is the goal
#
#   INPUT: none given, but then two floats from user
#   OUTPUT: nothing returned, but calculations printed from screen
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
#     get bill amount from user
#     convert to float
#
#     get tip percentage from user
#     convert to float
#
#     calculate tip
#     convert tip to string
#     truncate cents
#
#     calculate total
#     display tip and total
#   What helper methods do we need? What will they do?
#
# CODE
def tip_calculator
  print "What is the bill? "
  bill = gets.chomp.to_f

  print "What tip percentage would you like to leave? "
  percentage = gets.chomp.to_f

  tip = ((percentage / 100 ) * bill).round(2)
  total = (bill + tip).round(2)

  puts "The tip is #{format('%.2f', tip)}"
  puts "The total bill is #{format('%.2f', total)}"
end

tip_calculator
