require 'pry'

INITIAL_MARKER = ' '
X_MARKER = 'X'
O_MARKER = 'O'

def prompt(msg)
  puts "=> #{msg}"
end

def empty_squares(board)
  board.keys.select {|square| board[square] == INITIAL_MARKER}
end

def player_places_piece(board)
  choice = ''
  loop do
    prompt "Choose a valid square: #{empty_squares(board)}"
    choice = gets.chomp.to_i
    break if empty_squares(board).include?(choice)
    prompt "Not a valid square - choose again"
  end
  board[choice] = X_MARKER
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def display_board(board)
  system 'clear'
  puts "     |     |     "
  puts "  #{board[1]}  |  #{board[2]}  |  #{board[3]}  "
  puts "     |     |     "
  puts "-----+-----+-----"
  puts "     |     |     "
  puts "  #{board[4]}  |  #{board[5]}  |  #{board[6]}  "
  puts "     |     |     "
  puts "-----+-----+-----"
  puts "     |     |     "
  puts "  #{board[7]}  |  #{board[8]}  |  #{board[9]}  "
  puts "     |     |     "
end

board = initialize_board
display_board(board)

loop do 
player_places_piece(board)
display_board(board)
end
