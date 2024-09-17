=begin
Searching 101
Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.
=end
numbers = []

puts "Enter the 1st number: "
number = gets.chomp.to_i
numbers << number

puts "Enter the 2nd number: "
number = gets.chomp.to_i
numbers << number

puts "Enter the 3rd number: "
number = gets.chomp.to_i
numbers << number

puts "Enter the 4th number: "
number = gets.chomp.to_i
numbers << number

puts "Enter the 5th number: "
number = gets.chomp.to_i
numbers << number

puts "Enter the last number: "
number = gets.chomp.to_i

if numbers.include?(number)
  puts "The number #{number} appears in #{numbers}"
else
  puts "The number #{number} does not appear in #{numbers}"
end

