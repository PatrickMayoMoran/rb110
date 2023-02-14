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
def get_hand_value(hand)
  total_points = 0
  hand.each do |card|
    card_value = card[1] if card[1].class == Integer
  end

end

deck = initialize_deck
# 2. Deal cards to player and dealer
player_hand = []
dealer_hand = []
initialize_opening_hand!(deck, player_hand, dealer_hand)
players_cards = get_cards(player_hand)
prompt "Your cards:"
display_cards(players_cards)
player_hand_value = get_hand_value(player_hand)
prompt "Total points:"
prompt player_hand_value
# 3. Player turn: hit or stay
#   - repeat until bust or "stay"
# 4. If player bust, dealer wins.
# 5. Dealer turn: hit or stay
#   - repeat until total >= 17
# 6. If dealer bust, player wins.
# 7. Compare cards and declare winner.
