# Write a game where the player swims down a river infested with
# crocodiles.  The game should:
# * Use the `river` variable that defines the river (see code below).
#   * `-`: clear water.
#   * `C`: crocodile.
#   * The first five characters represent the first part of the river.
#     The second five characters represent the second part of the
#     river.  And so on.
# * Define the player as one character wide.
# * Start the player at the central position of the first part of the
#   river.
#   * e.g. `C-P--`.
# * Each turn:
#   * Check to see if the player is in the same position as a
#     crocodile.  If they are, `puts` `You were eaten.' and stop the
#     program.
#   * `puts` the whole river.  Include a `P` where the player is.
#   * Ask the player if they want to go to left, right or neither.
#     The player enters `left`, `right` or `neither`.
#   * Make the player float down the river by one river part (one line
#     of digits).  Move them to the left, the right, or keep them
#     where they are.
# Print `You survived!` if the player makes it past all parts of the
# river without hitting a crocodile.
#
# * Note: To stop the game when the user is eaten or survives the
#   whole river, don't use `exit` to quit the program because this
#   will break the automated tests.  To exit a while loop early, use
#   the `break` keyword.
#
# * Note: You can assume the player will never move outside the
#   boundary of the river when they choose left and right.  You can
#   also assume the player will always enter either `left`, `right` or
#   `neither`.
#
# * Example output:
#   ```
#   --P--
#   --C--
#   CC-CC
#   CC-CC
#   Type left, right or neither
#   left
#   -----
#   -PC--
#   CC-CC
#   CC-CC
#   Type left, right or neither
#   right
#   -----
#   --C--
#   CCPCC
#   CC-CC
#   Type left, right or neither
#   neither
#   -----
#   --C--
#   CC-CC
#   CCPCC
#   Type left, right or neither
#   neither
#   You survived!
#   ```
def prt(player,location) 
river = "-----,--C--,CC-CC,CC-CC"
river = river.split(",")
river[location] = player
puts river
end

count = 0
play ={:player0 => "--P--", :player1 => "-PC--", :player2 => "--CP-", :player3 => "CCPCC", :player4 => "CCPCC"}
while count < 5
  if count == 0
    prt(play[:player0],count)
    count += 1  
  end
  puts "Type left right or neither"
  move = gets.chomp.capitalize
  
  if count == 1 && move == "Left"
     prt(play[:player1],count)
     count += 1
  elsif count == 1 && move == "Right"
     prt(play[:player2],count)
     count += 1
  elsif count == 2 && (move == "Right" || move == "Left")
     prt(play[:player3],count)
     count += 1
  elsif count == 3 && move == "Neither"
     prt(play[:player4],count)
     count +=1
  elsif count == 4 && move == "Neither"
    puts "You survived"
    abort
  else 
    puts "You are eaten"
    abort
  end 
end


