# Get Middle Character

## Problem (P)
# Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters.

# - Inputs:
#   - non-empty String
# - Outputs:
#   - character or characters
# - Explicit Rules:
#   - If the argument has an odd length, you should return exactly one character. 
#   - If the argument has an even length, you should return exactly two characters.
# - Implicit Rules:


## Examples/Test Cases (E)
# center_of('I love ruby') == 'e'
# center_of('Launch School') == ' '
# center_of('Launch') == 'un'
# center_of('Launchschool') == 'hs'
# center_of('x') == 'x'

## Data Structures
# - String

## Algorithm
# - Define a method center_of with a single parameter str
#   - Initialized a variable length = str.size
#   - If length.odd? return str[length / 2]
#   - else return str[length / 2 - 1, length / 2]

## Code
def center_of(str)
  length = str.size

  if length.odd?
    return str[length / 2]
  else
    return str[length / 2 - 1, 2]
  end
end

puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'