# Write a program that:
# * Calculates the first 20 Fibonacci numbers.
#   * The first Fibonacci number is 0.
#   * The second Fibonacci number is 1.
#   * Every Fibonacci number after that is calculated by adding the
#     previous two Fibonacci numbers together e.g. the third Fibonacci
#     number is the result of `0 + 1`.
# * `puts`es these numbers, one per line.

count = 1
fib1 = 0
fib2 = 1
nextterm = 0
puts fib1
while count <= 21 do
  if count <= 1
    nextterm = count
  else 
    puts nextterm
    nextterm = fib1 + fib2
    fib1 = fib2
    fib2 = nextterm
  end
  count = count + 1  
end
