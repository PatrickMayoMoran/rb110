# PROBLEM
# Write a method that takes a short line and prints it in a box
# EXTENSION: for long strings, wrap them so they are in the center of the box
#
# INPUT: string
# OUTPUT: string
#
# EXAMPLES
# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+
# print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+
#
# RULES
#   EXPLICIT
#     text will always be terminal width (72 characters)
#   IMPLICIT
#     text is centered in middle of 3 lines with space separator from box
#     at each end
#     minimum dimensions for an empty box that should be printed if string
#     is empty
#
# ALGORITHM
#   IF string size is less than or equal to 76,
#     initialize horiztonal rule with string size + 2 of padding
#     initialize empty ling with string size + 2 padding
#   ELSIF string size is more than 76
#     initialize horizontal rule with 78 padding
#     initiliaze empty line with 78 spaces
#   END
#   determine how many lines we have to print
#     initialize number of lines to string length / 76 + 1
#   iterate through each multiple and create that line
#     use index times 76 as starting point of slice
#     Slice 76 characters from there
#     print line for box with that slice
# 
# HELPER METHODS
# make line with border, filler, insert

CORNER = '+'
SIDE = '|'
TOP_BOTTOM = '-'
def make_line(border, filler, length=2)
  line = ''
  line << border * 2
  line.insert(1, filler * length)
end

# def print_in_box(str)
#   length = str.length
#   box = Array.new(5)
#   box[0] = make_line(CORNER, TOP_BOTTOM)
#   box[1] = make_line(SIDE, ' ')
#   box[2] = make_line(SIDE, ' ')
#   box[3] = make_line(SIDE, ' ')
#   box[4] = make_line(CORNER, TOP_BOTTOM)
# 
#   box[0].insert(2, TOP_BOTTOM * length)
#   box[1].insert(2, ' ' * length)
#   box[2].insert(2, str)
#   box[3].insert(2, ' ' * length)
#   box[4].insert(2, TOP_BOTTOM * length)
#   p box
#   puts box
# end
def make_box_lines(message)
  if message.size <= 76
    horizontal = "+#{'-'*(message.size + 2)}+"
    empty_line = "|#{' '*(message.size + 2)}|"
  else
    horizontal = "+#{'-'*(78)}+"
    empty_line = "|#{' '*(78)}|"
  end

  return horizontal, empty_line
end

def make_message_lines(message)
  number_of_lines = message.size / 76 + 1
  if number_of_lines > 1
    start = 0
    number_of_lines.times do |index|
      start = index * 76
      break if index == number_of_lines - 1
      puts "| #{message[start, 76]} |"
    end
    last_line = message[start,76]
    puts "| #{last_line}#{' ' * (76 - last_line.size)} |"
  else
    puts "| #{message} |"
  end
end

def print_in_box(message)
  horizontal, empty_line = make_box_lines(message)

  puts horizontal
  puts empty_line

  make_message_lines(message)

  puts empty_line
  puts horizontal
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('To boldly go where no one has gone before. But this one is longer!!! More than 80 long in fact!')
print_in_box('')
print_in_box('This is an example of a super long string that will need to be split over multiple lines. It starts in the trees and ends in the spoons! If you\'re not chopping wood, you\'re buying wood and wood is very, very expensive, so get chopping! Those fires don\'t burn themselves. My maaaaaaaaan. Love it! TV is the future.')
