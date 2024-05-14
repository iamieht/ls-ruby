# Sum or Product of Consecutive Integers

## Problem
# Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

## Input
#   - Integer grteater than 0
#   - S: sum
#   - P: Product
## Output
# - a String with the result of the sum or the result of the product

## Rules
# - Integer must be greater than 0
# - Output String must give the result and the operation performed
# - No validation

## Examples/Test Cases
# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.


# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.

## Data Structures
# - String and Integers

## Alorithm
# - Define a method get_integer(message)
#   - output the message
#   - Initialize a variable number = gets.chomp
#   - return number.to_i
# - Define a method get_operation(message)
#   - Output the message
#   - Initialize a variable operation = gets.chomp
#   - return operation
# - Define a method get_result(operation, integer)
#   - Initialize a variable numbers = %w(1..integer)
#   - iterate over numbers and perform the respective operation and save result
#   - return result
# - Initialize a variable integer = get_integer("Please enter an integer greater than 0:")
# - Initialize a variable operation = get_operation("Enter 's' to compute the sum, 'p' to compute the product.")
# - If operation == 's' => result = get_result('s', integer)
# - If operation == 'p' => result = get_result('p', integer)
# - If operation == 's' output "The sum of the integers between 1 and #{integer} is #{result}."
# - If operation == 'p' output "The product of the integers between 1 and #{integer} is #{result}."

## Code
def get_integer(message)
  puts ">> #{message}"
  number = gets.chomp.to_i
  number
end

def get_operation(message)
  puts ">> #{message}"
  operation = gets.chomp
  operation
end

def get_result(operation, integer)
  result = 1
  if operation == 's'
    result = (1..integer).sum
  elsif operation == 'p'
    (1..integer).each { |num| result *= num }
  end
  result
end

integer = get_integer("Please enter an integer greater than 0:")
operation = get_operation("Enter 's' to compute the sum, 'p' to compute the product.")

if operation == 's'
  result = get_result(operation, integer)
  puts "The sum of the integers between 1 and #{integer} is #{result}."
elsif operation == 'p'
  result = get_result(operation, integer)
  puts "The product of the integers between 1 and #{integer} is #{result}."
else
  puts "Unknown operation."
end


