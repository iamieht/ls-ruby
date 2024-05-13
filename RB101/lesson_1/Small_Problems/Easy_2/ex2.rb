# How big is the room?

## Problem (P)
## Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.

# - Inputs:
#   - length of the room in meters: float
#   - width of the room in meters: float
# - Outputs:
#   - The area of the room in square meters (area of the room in square feet)
# - Explicit Rules:
#   - 1 square meter == 10.7639 square feet
# - Implicit Rules:


## Examples/Test Cases (E)
# Enter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 square meters (753.47 square feet).

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
METER_2_FEET = 10.7639

def prompt(message)
  puts ">> #{message}"
  value = gets.chomp
  return value
end

def calculate_area(length, width)
  length * width
end

def meter_2_feet(meters)
  meters * METER_2_FEET
end

length = prompt("Enter the length of the room in meters:")
width = prompt("Enter the width of the room in meters:")

area_in_meters = calculate_area(length.to_f, width.to_f)
area_in_feet = meter_2_feet(area_in_meters).round(2)

puts "The area of the room is #{area_in_meters} square meters (#{area_in_feet} square feet)."

