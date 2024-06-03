## Problem (P)
# Counting the Number of Characters
# Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as a character.

# - Inputs:
## - Word(s): String
# - Outputs:
##  - a String with number of characters in word(s)
# - Explicit Rules:
##  - Words must be separated by commas
##  - Spaces should not be counted as a character.
# - Implicit Rules:
## - Any input is valid as wil be treated as String

## Examples/Test Cases (E)
# Please write word or multiple words: walk
# There are 4 characters in "walk".

# Please write word or multiple words: walk, don't run
# There are 13 characters in "walk, don't run".

## Data Structures
# - String
# - Array

## Algorithm
# - Define a method prompt with a single parameter msg
#   - puts "==> #{msg}"
# - Define a method get_input
#   - values = gets.chomp
#   - values.split(',')
# - Define a method count_chars that takes an array and returns the sum of the number of characters of all elements of the array
# - prompt("Please write word or multiple words:")
# - words = get_input
# - number_of_chars = count_chars(words)
# - There are #{number_of_chars} in #{words}.

## Code
def prompt(msg)
  print "==> #{msg}"
end

def get_input
  values = gets.chomp
  values.split(' ')
end

def remove_whitespaces(array)
  array.map { |word| word.split(' ')}.flatten
end

def count_chars(array)
  array.map { |word| word.length }.sum
end

prompt("Please write a word or multiple words: ")
words = get_input
# words = remove_whitespaces(input)
number_of_chars = count_chars(words)

puts "There are #{number_of_chars} characters in #{words}."