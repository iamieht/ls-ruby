# How old is Teddy?

## Problem (P)
## Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.

## Modify this program to ask for a name, and then print the age for that person. For an extra challenge, use "Teddy" as the name if no name is entered.

# - Inputs:
#  - Name: String
# - Outputs:
#   - String

# - Explicit Rules:
#  - User provides a name, if not Teddy is used as default
#  - A random number between 20 and 200 is generated

# - Implicit Rules:
#   -
# - Mental Model:

## Examples/Test Cases (E)
# Teddy is 69 years old!

## Data Structures
# - String

## Algorithm
# - Define a get_name method with a single parameter message
#   - Initialize a variable name = gets.chomp
#   - If name.empty? Return name otherwise return Teddy
# - Initialize a variable name = get_name("What is your name?")
# - Output a string "#{name} is #{rand(20, 200)} years old!"

## Code
def get_name(message)
  puts message
  name = gets.chomp
  name.empty? ? "Teddy" : name
end

name = get_name("What is your name?")
puts "#{name} is #{rand(20..200)} years old!"