## Problem (P)
# Palindromic Strings (Part 1)
# Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. A palindrome reads the same forward and backward. For this exercise, case matters as does punctuation and spaces.

# - Inputs:
# - a String

# - Outputs:
# - a Boolean

# - Explicit Rules:
# - A palindrome reads the same forward and backward.
# - case matters as does punctuation and spaces.

# - Implicit Rules:


## Examples/Test Cases (E)
# palindrome?('madam') == true
# palindrome?('Madam') == false          # (case matters)
# palindrome?("madam i'm adam") == false # (all characters matter)
# palindrome?('356653') == true

## Data Structures
# - String

## Algorithm
# - Define a method palindrome? that takes a single argument of type String
#   - compare argument with argument reversed

## Code
def palindrome?(string)
  string == string.reverse
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true