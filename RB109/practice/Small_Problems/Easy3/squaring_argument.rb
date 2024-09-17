=begin
Squaring an Argument
Using the multiply method from the "Multiplying Two Numbers" problem, write a method that computes the square of its argument (the square is the result of multiplying a number by itself).

=end

def multiply(num1, num2)
  num1 * num2
end

def square(number)
  multiply(number, number)
end

puts square(5) == 25
puts square(-8) == 64