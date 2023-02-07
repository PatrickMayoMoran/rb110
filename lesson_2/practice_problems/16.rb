# PROBLEM: write a method that returns a valid UUID
#
# INPUT: none
# OUTPUT: string
#
# RULES:
#   UUID in form of 8-4-4-4-12
# ALGORITHM
# create empty string
# append 8 character long segment to string
# 3 times, append 4 character long segment to string
# append 12 character segment to string
# return string
#
# helper methods
#   make segment
#   create string of valid hexadecimal characters
#   given a starting integer n, return a string of n number of random
#   hexadecimal characters
#     create empty string
#     sample a letter randomly from valid characters
#     append random character to empty string
#     do this all n times
#   return the string

def create_UUID
  uuid = ''
end

def make_segment(n)
end
