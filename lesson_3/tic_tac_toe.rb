###### TIC TAC TOE GAME #######
PLAYERS = ['Player', 'Computer']
X_MARKER = 'X'
O_MARKER = 'O'

def prompt(msg)
  puts "==> #{msg}"
end

def continue
  prompt "Press any key to continue:"
  loop do
    response = gets
    break if response
  end
  system 'clear'
end

def welcome
  prompt "Welcome to Tic Tac Toe! Your goal is to get three in a row"
  prompt "Ready to start?"
  continue
end

def random_start
  PLAYERS.sample
end

def first_player_prompt
  prompt "Do you want to go first, second, or for me to choose randomly?"
  prompt <<-HEREDOC
Type the number of your choice below:
    1) You go first
    2) Computer goes first
    3) I choose randomly whether you or the computer goes first
  HEREDOC
end

def first_player
  loop do
    first_player_prompt
    response = gets.chomp
    case response
    when '1' then break 'Player'
    when '2' then break 'Computer'
    when '3' then break random_start
    else          prompt "That's not a valid choice"
    end
  end
end

def player_order(first_player)
  if first_player == 'Player'
    ['Player', 'Computer']
  else
    ['Computer', 'Player']
  end
end

def display_order(player_order)
  first = player_order[0]
  second = player_order[1]
  prompt "#{first} will go first and #{second} will go second."
end

def initialize_board
  board = {}
  (1..9).each do |i|
    board[i] = i.to_s
  end

  board
end

def display_board(board)
  system 'clear'
  display_top(board)
  display_middle(board)
  display_bottom(board)
end

def display_bottom(board)
  puts "     |     |     "
  puts "  #{board[7]}  |  #{board[8]}  |  #{board[9]}  "
  puts "     |     |     "
end

def display_middle(board)
  puts "-----+-----+-----"
  puts "     |     |     "
  puts "  #{board[4]}  |  #{board[5]}  |  #{board[6]}  "
  puts "     |     |     "
  puts "-----+-----+-----"
end

def display_top(board)
  puts "     |     |     "
  puts "  #{board[1]}  |  #{board[2]}  |  #{board[3]}  "
  puts "     |     |     "
end

def switch_turns(player)
  player == 'Player' ? 'Computer' : 'Player'
end

def play_game(board, player_order, markers)
  player = player_order[0]
  loop do
    place_marker(board, player, markers)
    display_board(board)
    break if winner?(board, markers) || full?(board)
    player = switch_turns(player)
  end
end

def full?(board)
  free_spaces = get_free_spaces(board)
  free_spaces.empty?
end

def winner?(board, markers)
  winning_lines = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                  [[1, 5, 9], [3, 5, 7]]              # diagonals
  markers.each do |_, marker|
    winning_lines.each do |line|
      return true if line.all? { |square| board[square] == marker }
    end
  end

  false
end

def place_marker(board, player, markers)
  if player == 'Player'
    player_places_marker(board, markers)
  else
    computer_places_marker(board, markers)
  end
end

def get_free_spaces(board)
  board.keys.select { |key| board[key] == key.to_s }
end

def computer_places_marker(board, markers)
  free_spaces = get_free_spaces(board)
  space = free_spaces.sample
  board[space] = markers[:computer]
end

def choose_marker
  markers = {}
  prompt "Would you like to be X or O? Type your answer below:"
  response = nil
  loop do
    response = gets.chomp.downcase
    break if response == 'x' || response == 'o'
    prompt "Not a valid choice - please type X or O"
  end
  player_marker = response == 'x' ? X_MARKER : O_MARKER
  computer_marker = player_marker == X_MARKER ? O_MARKER : X_MARKER
  markers[:player] = player_marker
  markers[:computer] = computer_marker
  markers
end

def player_places_marker(board, markers)
  free_spaces = get_free_spaces(board)
  response = nil
  loop do
    prompt "Choose a square: #{free_spaces}"
    response = gets.chomp.to_i
    break if free_spaces.include?(response)
    prompt "Not a valid choice"
  end

  board[response] = markers[:player]
end

def display_markers(markers)
  p_marker = markers[:player]
  c_marker = markers[:computer]
  prompt "Player will be #{p_marker} and computer will be #{c_marker}"
end

def get_game_settings
  player_order = player_order(first_player)
  display_order(player_order)
  continue
  markers = choose_marker
  display_markers(markers)
  continue
  return player_order, markers
end

###### GAME PLAY ######
system 'clear'
welcome
system 'clear'
player_order, markers = get_game_settings
board = initialize_board
display_board(board)
play_game(board, player_order, markers)
# Declare winner or tie
# Ask if want to play again?
# if yes, start over from Who goes first
# Otherwise, end game and say goodbye
