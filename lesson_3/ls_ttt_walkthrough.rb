def initialize_board
  new_board = {}
  (0..9).each { |num| new_board[num] = ' ' }
  new_board
end

def display_board(board)
  puts "     |     |     "
  puts "     |     |     "
  puts "     |     |     "
  puts "-----------------"
  puts "     |     |     "
  puts "     |     |     "
  puts "     |     |     "
  puts "-----------------"
  puts "     |     |     "
  puts "     |     |     "
  puts "     |     |     "
end

board = initialize_board
display_board(board)
