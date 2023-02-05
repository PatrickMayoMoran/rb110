# PROBLEM
# From a given string, return all the substrings that are palindromes
# 
# INPUTS: string
# OUTPUT: array of strings
#
# RULES
# substring is 2 characters and longer
# capital letters negate palindrome
#
# DATA STRUCTURE
# Array, duh
#
# ALGORITHM

# Build an array of all possible substrings
#   iterate through each letter of the substring
#   from that letter, iterate from min size to max size for that given char
#     append every substring into substring array
# Iterate through array of substrings, adding ones that are 
# palindromes to palindrome array

def palindromes(string)
  substrings = substrings(string)
  palindromes = []
  substrings.each do |sub|
    palindromes << sub if is_palindrome?(sub)
  end

  palindromes
end

def is_palindrome?(string)
  string.reverse == string
end

def substrings(string)
  substrings_array = []
  char_index = 0
  loop do
    min_string_size = 2
    max_string_size = string.size - char_index
    counter = 0
    loop do
      substrings_array << string[char_index, (min_string_size + counter)]
      counter += 1
      break if counter > max_string_size
    end

    char_index += 1
    break if char_index > string.size - 2
  end

  substrings_array
end

string = "hannahismylovelywifewhodoesupercoolstuffamanaplanacanalpanama"

p palindromes(string)
