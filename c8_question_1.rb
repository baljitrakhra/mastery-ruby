# Write a program that calculates the score for a word in Scrabble.
# It should:
# * Ask the user for a word e.g. `apple`.
# * `puts` the score for the word in Scrabble by totalling the points
#   for each letter in the word.
#   * Points for each letter:
#     * 0 points: blank tile
#     * 1 point: E, A, I, O, N, R, T, L, S, U
#     * 2 points: D, G
#     * 3 points: B, C, M, P
#     * 4 points: F, H, V, W, Y
#     * 5 points: K
#     * 8 points: J, X
#     * 10 points: Q, Z

# * Note: You can assume that the user will enter a word that only
#   contains letters and blanks.  You can assume the word will be in
#   uppercase.
def value(letter)
  one = ["E", "A", "I", "O", "N", "R", "T", "L", "S", "U"]
  two = ["D", "G"]
  three = ["B", "C", "M", "P"]
  four = ["F", "H", "V", "W", "Y"]
  five = ["K"]
  eight = ["J", "X"]
  ten = ["Q", "Z"]
  case true
  when one.include?(letter)
    return 1
  when two.include?(letter)
    return 2
  when three.include?(letter)
    return 3    
  when four.include?(letter)
    return 4
  when five.include?(letter)
    return 5
  when eight.include?(letter)
    return 8
  when ten.include?(letter)
    return 10  
  else
    return 0
  end
end

total = 0
puts "Enter word:"
word = gets.chomp.upcase
word = word.split("")
word.each do |letter|
  total = total + value(letter.to_s).to_i
end
puts "Total = #{total}"