SUITS = ['Hearts', 'Spades', 'Diamonds', 'Clubs']
CARDS = ['2', '3', '4', '5', '6', '7', '8', '9', '10'] + # numbers
        ['Jack', 'Queen', 'King', 'Ace']                 # face cards
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
  value = nil
  if card.to_i.to_s == card
    value = card.to_i
  elsif card == "Ace"
    value = [1, 11]
  else
    value = 10
  end
end

def initialize_deck
  deck = []
  SUITS.each do |suit|
    CARDS.each do |card|
      value = get_card_value(card)
      current_card = { card + " of " + suit => value }
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

deck = initialize_deck
# 2. Deal cards to player and dealer
player_hand = []
dealer_hand =[]
initialize_opening_hand!(deck, player_hand, dealer_hand)
# 3. Player turn: hit or stay
#   - repeat until bust or "stay"
# 4. If player bust, dealer wins.
# 5. Dealer turn: hit or stay
#   - repeat until total >= 17
# 6. If dealer bust, player wins.
# 7. Compare cards and declare winner.
