## Problem (P)
# Exclusive Or
# write a method named xor that takes two arguments, and returns true if exactly one of its arguments is truthy, false otherwise. Note that we are looking for a boolean result instead of a truthy/falsy value as returned by || and &&.

# - Inputs:
#   - 2 arguments of any type that evaluates to truthy or falsy

# - Outputs:
#   - a boolean value

# - Explicit Rules:
#   - returns true only when exactly one argument is truthy

# - Implicit Rules:


## Examples/Test Cases (E)
# xor?(5.even?, 4.even?) == true
# xor?(5.odd?, 4.odd?) == true
# xor?(5.odd?, 4.even?) == false
# xor?(5.even?, 4.odd?) == false

## Data Structures
# - Boolean
# - Numbers

## Algorithm
# - Define a method xor? that takes two arguments
#   - if arg1 && arg2 || !arg1 && !arg2 return false
#



## Code
def xor?(arg1, arg2)
  return true if arg1 && !arg2
  return true if arg2 && !arg1
  false
end



puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false