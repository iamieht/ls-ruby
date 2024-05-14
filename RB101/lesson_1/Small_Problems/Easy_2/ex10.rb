# Always Return Negative

## Problem
# Write a method that takes a number as an argument. If the argument is a positive number, return the negative of that number. If the number is 0 or negative, return the original number.

## Input
# - Integer: positive or negative
## Output
# - Integer: positive or negative

## Rules
# - Number is an integer

## Examples/Test Cases
# All test cases should return true
# puts negative(5) == -5
# puts negative(-3) == -3
# puts negative(0) == 0      # There's no such thing as -0 in ruby

## Data Structure
# - Integer

## Algorithm
# - Define a method negative that takes a single argument of type integer
#   - If the integer is positive (> 0) return - number
#   - If the integer is <= 0 return the original number

## Code
def negative(number)
  number <= 0 ? number : number * -1
end

# All test cases should return true
puts negative(5) == -5
puts negative(-3) == -3
puts negative(0) == 0      # There's no such thing as -0 in ruby

