# PROBLEM: Create a hash that expresses the frequency with which each letter
# appears in the below phrase
#
# INPUT: strings
# OUTPUT: Hash
#
# RULES: uppercase are different from lower case
#
# DATA STRUCTURE: Hash
#
# ALGORITHM
#   Create empty hash
#   iterate through each letter of the string
#     if letter is a space, skip
#     if letter is not yet in hash, add it with a value of 1
#     if letter is in hash, increment value by 1
#   return hash
statement = "The Flintstones Rock"

# OPTION 1: iteration through the statement
letter_frequency = {}
statement.chars do |char|
  next if char == ' '
  if letter_frequency[char] == nil
    letter_frequency[char] = 1
  else
    letter_frequency[char] += 1
  end
end

p letter_frequency

# OPTION 2: given solution - iteration through all upper and lowercase words
frequency = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a

letters.each do |letter|
  letter_frequency = statement.count(letter)
  frequency[letter] = letter_frequency if letter_frequency > 0
end

p frequency
