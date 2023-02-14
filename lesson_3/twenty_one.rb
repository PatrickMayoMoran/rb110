SUITS = ['Hearts', 'Spades', 'Diamonds', 'Clubs']
CARDS = ['2', '3', '4', '5', '6', '7', '8', '9', '10'] + # numbers
        ['Jack', 'Queen', 'King', 'Ace']                 # face cards
# PLayers cards
#   Array as well? Where you push cards on as you pop them off the deck?
#   Hmmm... but then how to calculate values from cards?
#   Cards could also be dictionaries with names and values
#   Aces will always be an exception; need way to handle the potential
#   point values
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

# deck = string_deck
# p deck
# p deck.shuffle

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

def hash_deck
  deck = []
  SUITS.each do |suit|
    CARDS.each do |card|
      value = get_card_value(card)
      current_card = { card + " of " + suit => value }
      deck.push(current_card)
    end
  end
  deck
end

deck = hash_deck
p deck
p deck.shuffle
### Possible decks
# Hash with suits as keys, arrays of cards as values
#   With this, you could randomly sample a suit and a value?
# 2. Deal cards to player and dealer
# 3. Player turn: hit or stay
#   - repeat until bust or "stay"
# 4. If player bust, dealer wins.
# 5. Dealer turn: hit or stay
#   - repeat until total >= 17
# 6. If dealer bust, player wins.
# 7. Compare cards and declare winner.
