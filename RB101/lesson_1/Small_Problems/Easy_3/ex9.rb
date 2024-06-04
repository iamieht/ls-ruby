## Problem (P)
# Palindromic Numbers
# Write a method that returns true if its integer argument is palindromic, false otherwise. A palindromic number reads the same forwards and backwards.

# - Inputs:
# - a Number

# - Outputs:
# - a Boolean

# - Explicit Rules:
# - A palindromic number reads the same forwards and backwards.

# - Implicit Rules:


## Examples/Test Cases (E)
# palindromic_number?(34543) == true
# palindromic_number?(123210) == false
# palindromic_number?(22) == true
# palindromic_number?(5) == true

## Data Structures
# - String
# - Number

## Algorithm
# - Define a method palindromic_number? that takes a single argument of type Integer
#   - Cast number into String
#   - compare argument with argument reversed

## Code
def palindromic_number?(number)
  number == number.to_s.reverse.to_i
end

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true