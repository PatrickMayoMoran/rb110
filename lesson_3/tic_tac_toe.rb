###### TIC TAC TOE GAME #######
def prompt(msg)
  puts "=> #{msg}"
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
# Game flow:
#
# Welcome
welcome
#   Greeting message
#   Ready to start?
# Who goes first?
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
