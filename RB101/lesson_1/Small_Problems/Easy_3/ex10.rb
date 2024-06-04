## Problem (P)
# Uppercase Check
# Write a method that takes a string argument, and returns true if all of the alphabetic characters inside the string are uppercase, false otherwise. Characters that are not alphabetic should be ignored.

# - Inputs:
##  - a String

# - Outputs:
##  - a Boolean


# - Explicit Rules:
##  - returns true if all of the alphabetic characters inside the string are uppercase


# - Implicit Rules:
##  - Only Strings allowed


## Examples/Test Cases (E)
# uppercase?('t') == false
# uppercase?('T') == true
# uppercase?('Four Score') == false
# uppercase?('FOUR SCORE') == true
# uppercase?('4SCORE!') == true
# uppercase?('') == true

## Data Structures
##  - String


## Algorithm
##  - Define a method uppercase? that takes a single argument of type String
##    - compare argument with argument.upcase


## Code
def uppercase?(string)
  string == string.upcase
end


puts uppercase?('t') == false
puts uppercase?('T') == true
puts uppercase?('Four Score') == false
puts uppercase?('FOUR SCORE') == true
puts uppercase?('4SCORE!') == true
puts uppercase?('') == true