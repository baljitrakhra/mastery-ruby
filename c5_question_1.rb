# Write a program that acts like a magic 8 ball.  It should:
# * Randomly choose one of five predictions:
#   * `It is certain`
#   * `It is decidedly so`
#   * `Ask again later`
#   * `Outlook not so good`
#   * `Very doubtful`
# * `puts` the prediction it chose.
# * Example output from running the program several times:
#   $ ruby question_1.rb
#   Ask again later
#   $ ruby question_1.rb
#   Ask again later
#   $ ruby question_1.rb
#   It is certain
one = "It is certain"
two = "It is decidedly so"
three = "Ask again later"
four = "Outlook not so good"
five = "Very doubtful"
six = rand(4)
case six
 when "0" 
   puts one
 when "1"
   puts two
 when "2"
   puts three
 when "3"
   puts four
 when "4"
   puts five
 else
   puts one
end
