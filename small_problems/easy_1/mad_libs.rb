# PROBLEM
#   What is the problem?
#     Create a simple mad libs program that prompts for noun, verb, adverb, and
#     adjective and creates a silly story with those
#   What is the goal
#
#   INPUT: None - we are prompting user for input, which will be strings
#   OUTPUT: text printed to screen
#
# EXAMPLES
# Enter a noun: dog
# Enter a verb: walk
# Enter an adjective: blue
# Enter an adverb: quickly
#
# Do you walk your blue dog quickly? That's hilarious!
#
#   EXPLICIT RULES
#     1 of each type
#   IMPLICIT RULES
#
# DATA STRUCTURES
#   How is the data organized?
#   What structures might we use in our solution?
#
# ALGORITHM
#   What steps will we use to solve the problem?
#     Initialize noun to be string of input from user
#     Initialize verb to be string of input from user
#     Initialize adjective to be string of input from user
#     Initialize adverb to be string of input from user
#     Print story to screen using input words
#   What helper methods do we need? What will they do?
#     get_word method
#       prompt user for noun, verb, adjective, or adverb
#       return that string
#
# CODE

def get_word(type)
  case type
    when 'adjective', 'adverb' then modifier = 'an'
    else modifier = 'a'
  end

  print "Please enter #{modifier} #{type}: "
  result = gets.chomp
end

def mad_libs
  noun = get_word('noun')
  verb = get_word('verb')
  adjective = get_word('adjective')
  adverb = get_word('adverb')

  puts "Do you let your #{adjective} #{noun} #{verb} #{adverb}? No way!!!"

end

mad_libs
