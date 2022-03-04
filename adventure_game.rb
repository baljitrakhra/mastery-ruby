puts "Welcome to the Text based adventure game"
puts "Enter your move: Right or Left or forward or q to quit"
move = gets.chomp.capitalize
while move != "Q"
    case move
      when "Right"
        puts "You are dead in Gobline attack" 
      when "Left"
        puts "You are dead and eaten by werewolf"
      when "Forward"
        puts "You live"
      else 
        puts "Enter the right move"
      end
      puts "Enter your move: Right or Left or forward or q to quit"
      move = gets.chomp.capitalize
end
