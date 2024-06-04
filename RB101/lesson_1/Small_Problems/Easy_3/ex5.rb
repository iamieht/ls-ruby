## Problem (P)
# Squaring an Argument
# Using the multiply method from the "Multiplying Two Numbers" problem, write a method that computes the square of its argument (the square is the result of multiplying a number by itself).

# - Inputs:
#   - a number

# - Outputs:
#   - a number

# - Explicit Rules:
#   - method multiply must be used

# - Implicit Rules:


## Examples/Test Cases (E)
# square(5) == 25
# square(-8) == 64

## Data Structures
#   - Integers

## Algorithm
# - Define a method square with a single parameter
#   - invoke method multiply and pass the parameter twice


## Code
def multiply(num1, num2)
  num1 * num2
end

def square(number)
  multiply(number, number)
end

puts square(5) == 25
puts square(-8) == 64