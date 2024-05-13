# How old is Teddy?

## Problem (P)
## Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.

# - Inputs:
# - Outputs:
#   - String

# - Explicit Rules:
#  - A random number between 20 and 200 is generated

# - Implicit Rules:
#   - No user input
# - Mental Model:

## Examples/Test Cases (E)
# Teddy is 69 years old!

## Data Structures
# - String

## Algorithm
# - Output a string "Teddy is #{rand(20, 200)} years old!"

## Code
puts "Teddy is #{rand(20..200)} years old!"