# Odd

## Problem (P)
# Write a method that takes one integer argument, which may be positive, negative, or zero. This method returns true if the number's absolute value is odd. You may assume that the argument is a valid integer value.

# - Inputs:
#   - Integer
# - Outputs:
#   - Boolean
# - Explicit Rules:
#   - Integer can be positive, negative or zero
#   - Output is true only if the absolute value of the integer is odd.
#   - Argument is always a valid integer
# - Implicit Rules:


## Examples/Test Cases (E)
# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# puts is_odd?(0)    # => false
# puts is_odd?(7)    # => true

## Data Structures
#   - Integer

## Algorithm
# - Define a method is_odd? with a single parameter (num) of type integer
#   - Convert integer argument to its absolute value
#   - Invoke the method odd? with the absolute value of the integer passed as an argument
#   - return true if integer is odd, false otherwise

## Code
def is_odd?(num)
  num.abs.odd?
end


puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true