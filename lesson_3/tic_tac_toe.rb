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
# Game flow:
#
# Welcome
welcome
# Who goes first?
prompt "Do you want to go first, second, or for me to choose randomly?"
loop do
  prompt <<-HEREDOC
Type the number of your choice below:
    1) You go first
    2) Computer goes first
    3) I choose randomly whether you or the computer goes first
  HEREDOC
  response = gets.chomp
  player_order = case response
  when '1' then break 'Player'
  when '2' then break 'Computer'
  when '3' then break random_start
  else          prompt "That's not a valid choice"
  end
end
#   Choose first, second, or random
#   Message about who's going first
# LOOP of markign squares
#   Display board
#   Add computer/player move
#   check for winner or board full
#   if winner/tie, break, otherwise continue
# Declare winner or tie
# Ask if want to play again?
# if yes, start over from Who goes first
# Otherwise, end game and say goodbye
