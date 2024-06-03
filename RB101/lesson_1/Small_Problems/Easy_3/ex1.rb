## Problem :Searching 101
# Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

### Inputs
# - 6 numbers

### Outputs
# - a String "The last inputed number appears or does not appear in array of numbers"

### Rules
# - Numbers are integers
# - Numbers are added to an array

## Examples/Test Cases
# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 17
# The number 17 appears in [25, 15, 20, 17, 23].


# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 18
# The number 18 does not appear in [25, 15, 20, 17, 23].

## Data Structures
# - Integers
# - Array
# - String

## Algorithm
# - Define a method prompt with a single parameter msg
#   - puts "==> #{msg}"
#   - number = gets.chomp_to_i
# - Declare an empty array numbers
#   - iterate 6 times
#   - prompt for the nth number
#   - check if last iteration
#   - if not => add to numbers array
#   - otherwise check if last number is in numbers
#   - if is in numbers: puts the number appears else the number does not appear

# Code
def prompt(msg)
  puts "==> #{msg}"
  # number = gets.chomp.to_i
end

def suffix(number)
  suffix = case number
  when 1 then '1st'
  when 2 then '2nd'
  when 3 then '3rd'
  when 4 then '4th'
  when 5 then '5th'
  end
end


numbers = []
idx = 1

while idx < 6
  prompt("Enter the #{suffix(idx)} number:")
  number = gets.chomp.to_i
  numbers << number
  idx += 1
end

prompt("Enter the last number:")
number = gets.chomp.to_i

if numbers.include? number
  puts "The number #{number} appears in #{numbers}."
else
  puts "The number #{number} does not appear in #{numbers}."
end

