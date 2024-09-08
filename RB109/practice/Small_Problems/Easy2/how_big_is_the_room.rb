=begin
Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.
Note: 1 square meter == 10.7639 square feet
=end
SQMETERS_TO_FEET = 10.7639

def calculate_area(length, width)
  length * width
end

puts "Enter the length of the room in meters:"
length_in_meters = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width_in_meters = gets.chomp.to_f

area_in_meters = calculate_area(length_in_meters, width_in_meters)
area_in_foot = (area_in_meters * SQMETERS_TO_FEET).round(2)

puts "The area of the room is #{area_in_meters} square meters (#{area_in_foot} square feet)."



# Example
# Enter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 square meters (753.47 square feet).