# Reverse the Digits in a Number

## Problem (P)
# Write a method that takes a positive integer as an argument and returns that number with its digits reversed.

# - Inputs:
#   - positive integer
# - Outputs:
#   - a reversed integer
# - Explicit Rules:
# - Implicit Rules:


## Examples/Test Cases (E)
# reversed_number(12345) == 54321
# reversed_number(12213) == 31221
# reversed_number(456) == 654
# reversed_number(12000) == 21 # No leading zeros in return value!
# reversed_number(12003) == 30021
# reversed_number(1) == 1

## Data Structures
# - Integer

## Algorithm
# - Define a method reversed_number with a single parameter of type integer
#   - coerce integer into a string, reverse it and coerce it back to an integer
#   - return integer

## Code
def reversed_number(num)
  return num.to_s.reverse.to_i
end

puts reversed_number(12345) == 54321
puts reversed_number(12213) == 31221
puts reversed_number(456) == 654
puts reversed_number(12000) == 21 # No leading zeros in return value!
puts reversed_number(12003) == 30021
puts reversed_number(1) == 1