# Write a program that lets a user play a solo game of
# Blackjack. The program should:
# * Ask the player if they want to "hit" or "stick".
#   * If the player hits, add a card to their hand (which starts empty unlike real Blackjack)
#   * If the player sticks, end the game.
# * Keep asking the player if they want to "hit" or "stick" until they
#   say "stick".
# * Each time the player hits, calculate the score for the player's
#   hand and `puts` `Score so far: ` and the score.
#   * e.g. `Score so far: 23`
#   * A score is calculated by adding up the values of each of the
#     cards in the player's hand.
#   * Value for each card:
#     * "two": 2
#     * "three": 3
#     * "four": 4
#     * "five": 5
#     * "six": 6
#     * "seven": 7
#     * "eight": 8
#     * "nine": 9
#     * "ten": 10
#     * "jack": 10
#     * "queen": 10
#     * "king": 10
#     * "ace": 11 (This is slightly different from real Blackjack.)
# * When the game is over, `puts` the outcome of the game.
#   * If the player's score is `<= 21`, `puts` `You scored: ` and the
#     final score
#     * e.g. `You scored: 20`
#   * If the player's score is `> 21`, `puts` `You busted with: ` and
#     the final score.
#     * e.g. `You busted with: 25`

# * As part of your solution, there should be four specific methods:
#   * `random_card`: This has already been written for you.  You don't
#     need to change it.
#   * `move`: Asks the player for a move.  If they enter `hit` or
#     `stick`, it returns the move.  If they enter something else, it
#     keeps asking them until they enter `hit` or `stick`.
#   * `score`: Takes an array of cards and returns the score for the
#     hand as an integer.
#   * `run_game`: uses the other methods to run a game of Blackjack.
#
# * Note: To stop the game when the user sticks, don't use `exit` to
#   quit the program because this will break the automated tests.  To
#   exit a while loop early, use the `break` keyword.
#
# * Note: When you run the automated tests, make sure to remove from
#   the top level of the file any calls to `run_test` or any other
#   methods.

# You don't need to change this method!
def random_card
  cards = ["two", "three", "four", "five", "six", "seven",
           "eight", "nine", "ten",
           "jack", "queen", "king", "ace"]

  cards[rand(13)]
end

def value(number)
  case number.to_s
    when "two" 
      return 2 
    when "three" 
      return 3
    when "four" 
      return 4 
    when "five" 
      return 5 
    when "six" 
      return 6
    when "seven" 
      return 7
    when "eight" 
      return 8 
    when "nine" 
      return 9
    when "ten" 
      return 10
    when "jack" 
      return 10
    when "queen" 
      return 10
    when "king" 
      return 10    
    when "ace"
      return 11
  end
end

def move
  play = nil
  while play != "Hit" || play != "Stick"
    puts "Enter the move : hit or stick => "
    play = gets.chomp.capitalize
    if play == "Hit"
      return "hit"
    elsif play == "Stick"
      return "stick"
    end
  end
end

def score(hand)
  total = 0
  hand.each do |card|
    total = total + value(card)
  end
  return total
end 

def run_game
  total = []
  while true
    if move() == "hit"
      total.push(random_card())
    else
      if score(total).to_i < 21
        print "You scored : "
      else 
        print "You busted with : "
      end
      puts score(total)
      abort
    end
    print "Score so far:  "
    puts score(total)
  end
end

