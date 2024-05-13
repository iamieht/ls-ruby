# How big is the room?

## Problem (P)
## Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.

## Modify this program to ask for the input measurements in feet, and display the results in square feet, square inches, and square centimeters.

# - Inputs:
#   - length of the room in feet: float
#   - width of the room in feet: float
# - Outputs:
#   - The area of the room in square feets
#   - The area of the room in square inches
#   - The area of the room in square centimeters
# - Explicit Rules:
#   - 1 square foot = 144 Sq. inch
#   - 1 saure foot = 929.0304 Sq cm
# - Implicit Rules:


## Examples/Test Cases (E)
# Enter the length of the room in feet:
# 50
# Enter the width of the room in feet:
# 15
# The area of the room is 750.0 square feet.
# The area of the room is 108000 square inch
# The area of the room is 696772.8 square cm

## Data Structures
#   - Float
#   - String

## Algorithm
# - Define a method prompt that takes a single argument message
#   - puts message
#   - Initialize a variable value = gets.chomp
#   - Return value
# - Define a method calculate_area that takes two arguments, length and width
#   - returns length * width
# - Define a method meter_2_feet that takes a single argument meters
#   - Initialize a constant METER_2_FEET = 10.7639
#   - return meters * METER_2_FEET
# - Invoke prompt("Enter the length of the room in meters:")
# - Initialize a variable length = gets.chomp.to_f
# - Invoke prompt("Enter the width of the room in meters:")
# - Initialize a variable width = gets.chomp.to_f
# - area_in_meters = calculate_area(length, width)
# - area_in_feet = meter_2_feet(area_in_meters)
# - Output "The area of the room is #{area_in_meters} square meters (#{area_in_feet} square feet)."

## Code
SQFOOT_2_SQINCH = 144
SQFOOT_2_SQCM = 929.0304

def prompt(message)
  puts ">> #{message}"
  value = gets.chomp
  return value
end

def calculate_area(length, width)
  length * width
end

length = prompt("Enter the length of the room in feet:")
width = prompt("Enter the width of the room in feet:")

area_in_feet = calculate_area(length.to_f, width.to_f)
area_in_inch = (area_in_feet * SQFOOT_2_SQINCH).round(2)
area_in_cm = (area_in_feet * SQFOOT_2_SQCM).round(2)

puts "The area of the room is #{area_in_feet} square feet."
puts "The area of the room is #{area_in_inch} square inches."
puts "The area of the room is #{area_in_cm} square centimeters."

