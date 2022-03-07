# Write an adventure game that the player plays from the command line
# by typing in commands like `look`, `north` etc.  They can move
# between rooms, look at things and interact with objects.  The game
# should have this behaviour:
# * Two rooms: hall and study.
# * The player starts in the hall.
# * General commands (can be run at any time).
#   * `quit`: `puts`es `Bye!` and the program stops executing.
#   * (command incorrect for situation): nothing happens, nothing is
#                                        `puts`ed.
# * Room-specific commands
#   * Hall
#     * `look`: `puts`es `You are standing in a hall with a marble
#               floor. You see a door.`
#     * `north`: Move to the study.
#   * Study:
#     * `look`: `puts`es `You are in a warm and cosy study. You see a
#               safe. You see a desk.`
#     * `look at desk`: `puts`es `You see a piece of paper that reads,
#                       The combination is 2451.`
#     * `south`: Move to the hall.
#     * `enter combination 2451`: `puts`es `You see some diamonds in
#                                 the safe, pick them up and make your
#                                 escape` and the program stops
#                                 executing.
#
# * Note: To stop the program (e.g. when the user types `quit` or when
#   they win the game), don't use `exit` to quit the program because
#   this will break the automated tests.  To exit a while loop early,
#   use the `break` keyword.
#
# * Note: When you run the automated tests, the tests will simulate
#   the user input.  You shouldn't need to enter any input manually.
#   If the tests hang when you run them, it probably means your code
#   doesn't work correctly, yet.
# 
# * Note: To pass the tests, you'll need to `puts` exactly what's
#   expected. Watch out for stray punctuation, capital letters, etc.
def hall(move_h)
  if move_h == "Look"
    puts "You are standing in a hall with a marble floor. You see a door."
  elsif move_h == "North"
    puts "Move to the study" 
  else
    puts "Enter valid input"
  end
end

def study(move_s)
  if move_s == "Look"
    puts "You are in a warm and cosy study. You see a safe. You see a desk."
  elsif move_s == "Look at desk"
    puts "You see a piece of paper that reads, The combination is 2451."
  else
    puts "Enter valid input"
  end
end  

move_s = "xxx"
move_h = "xxx"
while move_h != "North"
  puts "Welcome to the Adventure game"
  puts "Enter your move:"
  move_h = gets.chomp.capitalize 
  if move_h == "Quit"
    puts "Bye"
    abort
  end
  hall(move_h)
end

while move_s != "South"
  puts "Enter your move:"
  move_s = gets.chomp.capitalize     
  if move_s == "Quit"
    puts "Bye"
    abort
  elsif move_s == "Enter combination 2451"
    puts "You see some diamonds in the safe, pick them up and make your escape"
    abort
  else
    study(move_s)
  end
end
