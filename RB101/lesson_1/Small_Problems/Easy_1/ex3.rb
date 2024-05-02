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

# Further Exploration
# Modify stringy so it takes an additional optional argument that defaults to 1. If the method is called with this argument set to 0, the method should return a String of alternating 0s and 1s, but starting with 0 instead of 1.

def stringy_fe(num, default=1)
  result = ""

  if default == 1
    num.times do |idx|
      result += idx.even? ? '1' : '0'
    end
  elsif default == 0
    num.times do |idx|
      result += idx.odd? ? '1' : '0'
    end
  else
    return "Invalid option"
  end

  return result
end

puts "Further Exploration"
puts stringy_fe(6) == '101010'
puts stringy_fe(6, 0) == '010101'