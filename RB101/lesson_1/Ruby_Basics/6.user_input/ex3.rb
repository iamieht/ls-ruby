# Print Something (Part 1)
# Write a program that asks the user whether they want the program to print "something", then print it if the user enters y. Otherwise, print nothing.

puts ">> Do you want me to print somethng? (y/n)"
input = gets.chomp
if input == 'y'
  puts "something"
end

# Solution 2
puts '>> Do you want me to print something? (y/n)'
choice = gets.chomp
puts 'something' if choice.downcase == 'y'