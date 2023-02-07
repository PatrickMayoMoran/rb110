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
  uuid << make_segment(8) + '-'
  3.times do
    uuid << make_segment(4) + '-'
  end
  uuid << make_segment(12)
  uuid
end

def make_segment(n)
  hexadecimals = ('0'..'9').to_a + ('a'..'f').to_a
  segment = ''
  n.times do
    segment << hexadecimals.sample
  end

  segment
end

p create_UUID

# OPTION 2: given solution, iteration over range objects and an array with 
# segment sizes

def generate_UUID
  characters = []
  (0..9).each { |num| characters << num.to_s }
  ('a'..'f').each { |letter| characters << letter }

  uuid = ''
  segments = [8, 4, 4, 4, 12]
  segments.each_with_index do |segment, index|
    segment.times { |_| uuid << characters.sample }
    uuid << '-' unless index >= segments.size - 1
  end

  uuid
end

p generate_UUID
