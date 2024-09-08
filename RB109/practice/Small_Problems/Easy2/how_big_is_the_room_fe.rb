=begin
Build a program that asks a user for the length and width in feet of a room in meters and then displays the area of the room in square feet, square inches and square centimeters.
Note: 1 square meter == 10.7639 square feet
=end
SQMETERS_TO_FEET = 10.7639
SQFEET_TO_METER = 0.0929
SQFEET_TO_CM = 929.0304
SQFEET_TO_INCH = 144

def calculate_area(length, width)
  length * width
end

puts "Enter the length of the room in feets:"
length_in_feet = gets.chomp.to_f

puts "Enter the width of the room in feets:"
width_in_feet = gets.chomp.to_f

area_in_feet = calculate_area(length_in_feet, width_in_feet)
area_in_meters = (area_in_feet * SQFEET_TO_METER).round(2)
area_in_inches = (area_in_feet * SQFEET_TO_INCH).round(2)
area_in_cm = (area_in_feet * SQFEET_TO_CM).round(2)

puts "The area of the room is #{area_in_feet} square feets (#{area_in_meters} square meters) / (#{area_in_inches} square inches) / (#{area_in_cm} square centimeters)."



# Example
# Enter the length of the room in feet:
# 42
# Enter the width of the room in feet:
# 35
# The area of the room is 70.0 square meters (753.47 square feet).