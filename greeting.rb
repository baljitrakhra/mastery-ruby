puts "Please enter your first name :"
name = gets.chomp.capitalize
name.chr == "S" ? (puts name.upcase) : (puts "Hi,#{name}")

