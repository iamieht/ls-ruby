## Problem (P)
# Arithmetic Integer
# Write a program that prompts the user for two positive integers, and then prints the results of the following operations on those two numbers: addition, subtraction, product, quotient, remainder, and power. Do not worry about validating the input.


# - Inputs:
##  - 2 positive integers
# - Outputs:
##  - 6 arithmetic operations: addition, subtraction, product, quotient, remainder, and power.
# - Explicit Rules:
## - Positive integers
## - No input validation
# - Implicit Rules:


## Examples/Test Cases (E)
# ==> Enter the first number:
# 23
# ==> Enter the second number:
# 17
# ==> 23 + 17 = 40
# ==> 23 - 17 = 6
# ==> 23 * 17 = 391
# ==> 23 / 17 = 1
# ==> 23 % 17 = 6
# ==> 23 ** 17 = 141050039560662968926103

## Data Structures
## - Integers

## Algorithm
# - Define a method prompt with a single parameter msg
#   - puts "==> #{msg}"
# - Define a method get_integer
#   - integer = gets.chomp.to_i
# - get number1 = get_integer
# - get number2 = get_integer
# - puts "#{number1} + #{number2} = #{number1 + number2}"
# - puts "#{number1} - #{number2} = #{number1 - number2}"
# - puts "#{number1} * #{number2} = #{number1 * number2}"
# - puts "#{number1} / #{number2} = #{number1 / number2}"
# - puts "#{number1} % #{number2} = #{number1 % number2}"
# - puts "#{number1} ** #{number2} = #{number1 ** number2}"

## Code
def prompt(msg)
  puts "==> #{msg}"
end

def get_integer
  integer = gets.chomp.to_i
end

prompt("Enter the first number:")
number1 = get_integer

prompt("Enter the second number:")
number2 = get_integer

prompt("#{number1} + #{number2} = #{number1 + number2}")
prompt("#{number1} - #{number2} = #{number1 - number2}")
prompt("#{number1} * #{number2} = #{number1 * number2}")
prompt("#{number1} / #{number2} = #{number1 / number2}")
prompt("#{number1} % #{number2} = #{number1 % number2}")
prompt("#{number1} ** #{number2} = #{number1 ** number2}")