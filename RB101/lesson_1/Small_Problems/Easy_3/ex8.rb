## Problem (P)
# Palindromic Strings (Part 2)
# Write another method that returns true if the string passed as an argument is a palindrome, false otherwise. This time, however, your method should be case-insensitive, and it should ignore all non-alphanumeric characters.

# - Inputs:
# - a String

# - Outputs:
# - a Boolean

# - Explicit Rules:
# - A palindrome reads the same forward and backward.
# - case-insenstive
# - should ignore all non-alphanumeric characters.

# - Implicit Rules:


## Examples/Test Cases (E)
# real_palindrome?('madam') == true
# real_palindrome?('Madam') == true           # (case does not matter)
# real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# real_palindrome?('356653') == true
# real_palindrome?('356a653') == true
# real_palindrome?('123ab321') == false

## Data Structures
# - String

## Algorithm
# - Define a method palindrome? that takes a single argument of type String
#   - compare argument with argument reversed

## Code
def palindrome?(string)
  string == string.reverse
end

def real_palindrome?(string)
  palindrome?(string.downcase.delete('^a-z0-9'))
end

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false