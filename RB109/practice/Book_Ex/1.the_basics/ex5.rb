=begin
Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.
=end

def factorial(num)
  result = 1
  loop do
    result *= num
    num -= 1
    break if num == 0
  end
  result
end

puts factorial(5) #=> 120
puts factorial(6) #=> 720
puts factorial(7) #=> 5040
puts factorial(8) #=> 40320
