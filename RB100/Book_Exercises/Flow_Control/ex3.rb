# Write a program that takes a number from the user between 0 and 100 and reports back whether the number is between 0 and 50, 51 and 100, or above 100.

puts "Choose a number between 0 and 100:"
number = gets.chomp.to_i

if number < 0
  puts "Invalid Input: Select a number between 0 and 100"
elsif number < 51
  puts "Number #{number} is between 0 and 50"
elsif number < 101
  puts "Number #{number} is between 51 and 100"
else
  puts "Number #{number} is above 100"
end