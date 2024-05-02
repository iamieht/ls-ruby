# Madlibs


## Problem (P)
# Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective and injects those into a story that you create.

# - Inputs:
#   - noun: String
#   - verb: String
#   - adjective: String
#   - adverb: String
# - Outputs:
#   - String
# - Explicit Rules:
# - Implicit Rules:


## Examples/Test Cases (E)
# Enter a noun: dog
# Enter a verb: walk
# Enter an adjective: blue
# Enter an adverb: quickly

# Do you walk your blue dog quickly? That's hilarious!

## Data Structures
# String

## Algorithm
# - Define a method madlib with 4 parameters: noun, verb, adjective, adverb
#   - return "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious"

## Code
def madlib(noun, verb, adjective, adverb)
  return "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
end

print "Enter a noun: "
noun = gets.chomp
print "Enter a verb: "
verb = gets.chomp
print "Enter an adjective: "
adjective = gets.chomp
print "Enter an adverb: "
adverb = gets.chomp

puts madlib(noun, verb, adjective, adverb)
