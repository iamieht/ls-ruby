# Stringy Strings

## Problem (P)
#  Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

# - Inputs:
#   - a positive integer
# - Outputs:
#   - a string of 1s and 0s
# - Explicit Rules:
#   - The length of the string matches the integer
#   - integer is positive
#   - string starts with 1
# - Implicit Rules:


## Examples/Test Cases (E)
# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

## Data Structures
#   - String
#   - Integer

## Algorithm
# - Define a method stringy with a single parameter num that represents a positive integer
#   - Initialize a variable result with an empty string
#   - loop num times
#   - if times is odd add 1, else ass 0
#   - return result

## Code
def stringy(num)
  result = ''
  count = 1
  while count <= num
    if count.odd?
      result += "1"
    else
      result += "0"
    end
    count += 1
  end
  return result
end

def stringy2(num)
  result = ''

  num.times do |idx|
    result += idx.even? ? '1' : '0'
  end

  return result
end



puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

puts stringy2(6) == '101010'
puts stringy2(9) == '101010101'
puts stringy2(4) == '1010'
puts stringy2(7) == '1010101'