# When will I Retire?

## Problem (P)
# Build a program that displays when the user will retire and how many years she has to work till retirement.

## Inputs:
# - Age: Int
# - Retire age: Int
## Outputs:
#  - current year
#   - retirement year
#   - Pending working years
## Explicit rules:
#   - User provides the age
#   - User provides retirement age
#   - Time class must be used
## Implicit rules
#   - No data validation

## Examples/Test Cases (E)
# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!

## Data Structures (D)
# - String and Integer

## Algorithm (A)
#  Define a method prompt with a parameter message
#   - puts message
#   - Initialize variable age = gets.chomp.to_i
#   - Return age
#  Define a method get_current_year with no parameters
#   - return current year
#  Define a method calc_retirement_year with two parameters (current_year, years_to_work)
#   - return current_year + retirement_age
#  - Initialize a variable age = prompt("What is your age?")
#   - Initialize a variable retirement_age = prompt("At what age would you like to retire?")
#   - Initilialize a variable years_to_work = retirement_age - age
#   - Initilize a variable retirement_year = calc_retirement_year(current_year, years_to_work)
#   - Output "It's #{current_year}. You will retire in #{retirement_year}."
#   - Output "You have only #{retirement_age - age} years of work to go!"

## Code (C)
def prompt(message)
  puts ">> #{message}"
  age = gets.chomp.to_i
  return age
end

def get_current_year
  Time.new.year
end

def calc_retirement_year(current_year, retirement_age)
  current_year + retirement_age
end

age = prompt("What is your age?")
retirement_age = prompt("At what age would you like to retire?")
years_to_work = retirement_age - age
retirement_year = calc_retirement_year(get_current_year, years_to_work)

puts "It's #{get_current_year}. You will retire in #{retirement_year}."
puts "You have only #{years_to_work} years of work to go!"
