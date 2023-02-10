###### TIC TAC TOE GAME #######
PLAYERS = ['Player', 'Computer']

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
  for i in (1..9)
    board[i] = i.to_s
  end

  board
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

def switch_turns(player)
  player = player == 'Player' ? 'Computer' : 'Player'
end

def play_game(board, player_order)
  player = player_order[0]
  p player
#  place_marker(board, player)
#  winner?(board)
  player = switch_turns(player)
  p player
end

###### GAME PLAY ######
# welcome
### WHO GOES FIRST? ###
player_order = player_order(first_player)
system 'clear'
display_order(player_order)
board = initialize_board
display_board(board)
play_game(board, player_order)
# LOOP of markign squares
#   Display board
#   Add computer/player move
#   check for winner or board full
#   if winner/tie, break, otherwise continue
# Declare winner or tie
# Ask if want to play again?
# if yes, start over from Who goes first
# Otherwise, end game and say goodbye
