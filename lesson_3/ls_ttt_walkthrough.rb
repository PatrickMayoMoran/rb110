require 'pry'

INITIAL_MARKER = ' '
X_MARKER = 'X'
O_MARKER = 'O'
MARKERS = [X_MARKER, O_MARKER]
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]              # diagonals

def prompt(msg)
  puts "=> #{msg}"
end

def empty_squares(board)
  board.keys.select { |square| board[square] == INITIAL_MARKER }
end

def player_places_piece(board, player_markers)
  choice = ''
  loop do
    prompt "Choose a valid square: #{empty_squares(board)}"
    choice = gets.chomp.to_i
    break if empty_squares(board).include?(choice)
    prompt "Not a valid square - choose again"
  end
  board[choice] = player_markers[:player]
end

def computer_places_piece(board, player_markers)
  choice = empty_squares(board).sample
  board[choice] = player_markers[:computer]
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

def choose_marker(markers)
  prompt "Do you want to use X or O?"
  player_marker = nil
  loop do
    player_marker = gets.chomp.upcase
    break if player_marker == 'X' || player_marker == 'O'
    prompt "That's not a valid marker - please enter X or O"
  end
  player_marker = player_marker == 'X' ? X_MARKER : O_MARKER
  computer_marker = player_marker == 'X' ? O_MARKER : X_MARKER
  markers[:player] = player_marker
  markers[:computer] = computer_marker
  markers
end

def winner?(board)
  !!detect_winner(board)
end

def winning_player(board, player_markers)
  winning_marker = detect_winner(board)
  winner = winning_marker == player_markers[:player] ? "You" : "Computer"
  winner
end

def detect_winner(board)
  MARKERS.each do |marker|
    WINNING_LINES.each do |line|
      return marker if line.all? { |square| board[square] == marker }
    end
  end
  nil
end

def full?(board)
  empty_squares(board).empty?
end

prompt "Welcome to Tic Tac Toe!"

loop do
  board = initialize_board
  display_board(board)

  player_markers = { player: nil, computer: nil }
  choose_marker(player_markers)

  loop do
    player_places_piece(board, player_markers)
    break if winner?(board) || full?(board)
    computer_places_piece(board, player_markers)
    display_board(board)
    break if winner?(board) || full?(board)
  end

  prompt "It's a tie!" if full?(board) && !winner?(board)
  if winner?(board)
    winner = winning_player(board, player_markers)
    prompt "#{winner} won!"
  end

  prompt "Play again? (y or n)"
  play_again = gets.chomp.downcase.start_with?('y')
  break unless play_again
end

prompt "Thanks for playing!"
