# Repeat Yourself
# Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

## Problem (P)

# - Inputs:
#   - a String
#   - a positive integer
# - Outputs:
#   - Strings

# - Explicit Rules:
#   - Output the string as many times as the integer indicates
# - Implicit Rules:


## Examples/Test Cases (E)
# repeat('Hello', 3) => Hello, Hello, Hello

## Data Structures
# - String
# - Integer

## Algorithm
# - Define a method repeat that accepts two arguments: a String (str) and an Integer (n)
#   - loop n times
#     - output the string (str)

## Code
def repeat(str, iterations)
  iterations.times { puts str }
end

repeat('Hello', 3)