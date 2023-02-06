# PROBLEM
# Write a method that takes two arguments, an integer and a boolean
# and calculates the bonus for a given salary. If the boolean is true,
# the bonus should be half the salary. If the boolean is false, the 
# bonus should be 0
#
# GOAL
# write a method that returns an integer when given an integer and boolean
#
# EXAMPLES
# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000

# RULES
#   return an integer, whether 0 or half given salary
#
# ALGORITHM
#   initialize bonus to 0
#   if boolean is false, return bonus
#   otherwise, return salary / 2

def calculate_bonus(salary, boolean)
  bonus = 0
  return bonus if boolean == false
  bonus = salary / 2
end

def calculate_bonus_2(salary, boolean)
  boolean ? salary / 2 : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

puts calculate_bonus_2(2800, true) == 1400
puts calculate_bonus_2(1000, false) == 0
puts calculate_bonus_2(50000, true) == 25000
