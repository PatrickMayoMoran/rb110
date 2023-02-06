# PROBLEM
#   What is the problem?
#     Greet a user by name, altering the greeting based on the punctuation that
#     follows a user's name
#   What is the goal
#
#   INPUT: none - but then name solicited from user
#   OUTPUT: none - but then greeting output to screen
#
# EXAMPLES
#
#   EXPLICIT RULES
#     greeting should change if name is followed by exclamation point
#   IMPLICIT RULES
#
# DATA STRUCTURES
#   How is the data organized?
#   What structures might we use in our solution?
#
# ALGORITHM
#   What steps will we use to solve the problem?
#     prompt user for name
#     check name for !
#     if !, Big greet
#     if not, small greet
#     if ?, confusing greet
#   What helper methods do we need? What will they do?
#   big greet - all caps greeting with name
#   confusing greet - greet with a confusing message
#   small greet - regular greet
#
# CODE
def greet
  print "What is your name? "
  name = gets.chomp

  if     name.end_with?('!') then big_greet(name)
  elsif  name.end_with?('?') then confusing_greet(name)
  else   puts "Hello #{name}! Nice to meet you."
  end

end

def big_greet(name)
  name = name.reverse[1, (name.size - 1)].reverse
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
end

def confusing_greet(name)
  name = name.reverse[1, (name.size - 1)].reverse
  puts "Hello #{name}... if that's who you really are?"
end

greet
