def factors(number)
  divisor = number
  factors = []
  begin
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end

# Alyssa noticed that this will fail if the input is 0, or a negative number, and asked Alan to change the loop. How can you make this work without using the begin/end until construct? Note that we're not looking to find the factors for 0 or negative numbers, but we just want to handle it gracefully instead of raising an exception or going into an infinite loop.

def factors2(number)
  divisor = number
  factors = []
  loop do
    break if divisor < 1
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

def factors3(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

p factors(5)
p factors2(5)
p factors3(5)

# What is the purpose of the number % divisor == 0 ?
# To find the numbers that are divisible without remainder
# (Allows you to determine if the result of the division is an integer number (no remainder).)

# What is the purpose of the second-to-last line (line 8) in the method (the factors before the method's end)?
# To return the array of factors
# The purpose of line 8 is to make factors the return value of the method. Recall that without an explicit return statement in the code, the return value of the method is the last statement executed. If we omitted this line, the code would execute, but the return value of the method would be nil.