SUITS = ['Hearts', 'Spades', 'Diamonds', 'Clubs']
CARDS = ['2', '3', '4', '5', '6', '7', '8', '9', '10'] + # numbers
        ['Jack', 'Queen', 'King', 'Ace']                 # face cards
MAX_POINTS = 21
# PLayers cards
# 1. Initialize deck
#### Array of Strings ####
def string_deck
  deck = []
  SUITS.each do |suit|
    CARDS.each do |card|
      current_card = card + " of " + suit
      deck.push(current_card)
    end
  end

  deck
end

### ARRAY OF HASHES ###
def get_card_value(card)
  if card.to_i.to_s == card
    card.to_i
  elsif card == "Ace"
    [1, 11]
  else
    10
  end
end

def initialize_deck
  deck = []
  SUITS.each do |suit|
    CARDS.each do |card|
      value = get_card_value(card)
      current_card = [card + " of " + suit, value]
      deck.push(current_card)
    end
  end
  deck.shuffle
end

def deal_card!(deck, hand)
  card = deck.pop
  hand.push(card)
end

def initialize_opening_hand!(deck, player_hand, dealer_hand)
  2.times do
    deal_card!(deck, player_hand)
    deal_card!(deck, dealer_hand)
  end
end

def prompt(msg)
  puts "==> #{msg}"
end

def get_cards(hand)
  cards = []
  hand.each do |card|
    cards << card[0]
  end
  cards
end

def display_cards(cards)
  puts cards
end

def get_non_ace_points(hand)
  total_points = 0
  hand.each do |card|
    if card[1].class == Integer
      card_value = card[1]
      total_points += card_value
    end
  end
  total_points
end

def ace?(card)
  card[1].class == Array
end

def count_aces(hand)
  count = 0
  hand.each do |card|
    count += 1 if ace?(card)
  end
  count
end

def get_hand_value(hand)
  total_points = 0
  total_points += get_non_ace_points(hand)
  number_of_aces = count_aces(hand)
  if number_of_aces > 0
    total_points = add_ace_points(number_of_aces, total_points)
  end

  total_points
end

def add_ace_points(number_of_aces, total_points)
  total_points = total_points
  number_of_aces.times do
    additional_points = total_points <= 10 ? 11 : 1
    total_points += additional_points
  end

  total_points
end

def confirmed?(action)
  prompt "You've chosen to #{action}."
  prompt "Type y to confirm; anything else to choose again"
  response = gets.chomp.downcase
  return true if response == 'y'
  false
end

def hit?
  action = nil
  loop do
    prompt "Hit or stay? type hit to hit, anything else to stay."
    response = gets.chomp.downcase
    action = response == "hit" ? "hit" : "stay"
    break if confirmed?(action)
  end
  if action == "hit"
    true
  else
    false
  end
end
def get_player_info(player_hand)
  player_hand_value = get_hand_value(player_hand)
  players_cards = get_cards(player_hand)
  return players_cards, player_hand_value
end

def display_player_info(players_cards, player_hand_value)
  prompt "Your cards:"
  display_cards(players_cards)
  prompt "Total points:"
  puts player_hand_value
end

def busted?(hand_value)
  hand_value > MAX_POINTS
end

def display_dealer_hand(dealer_hand)
  prompt "Dealer's cards:"
  puts "#{dealer_hand[0][0]} and unknown card"
end

#### GAME PLAY ####
deck = initialize_deck
# 2. Deal cards to player and dealer
player_hand = []
dealer_hand = []
initialize_opening_hand!(deck, player_hand, dealer_hand)
players_cards, player_hand_value = get_player_info(player_hand)
display_player_info(players_cards, player_hand_value)
display_dealer_hand(dealer_hand)

while hit?
  deal_card!(deck, player_hand)
  players_cards, player_hand_value = get_player_info(player_hand)
  display_player_info(players_cards, player_hand_value)
  display_dealer_hand(dealer_hand)
  break if busted?(player_hand_value)
end

if busted?(player_hand_value)
  prompt "You busted; dealer wins!"
else
  # dealer_turn(dealer_hand)
end
# 4. If player bust, dealer wins.
# 5. Dealer turn: hit or stay
#   - repeat until total >= 17
# 6. If dealer bust, player wins.
# 7. Compare cards and declare winner.
