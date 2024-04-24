# Print Something (Part 2)
while true
  puts ">> Do you want me to print something? (y/n)"
  input = gets.chomp.downcase
  if input == 'y' || input == 'n'
    puts "something" if input == 'y'
    break
  else
    puts "Invalid input! Please enter y or n"
  end
end 

# Solution 2 (LS)
choice = nil
loop do
  puts '>> Do you want me to print something? (y/n)'
  choice = gets.chomp.downcase
  break if %w(y n).include?(choice)
  puts '>> Invalid input! Please enter y or n'
end
puts 'something' if choice == 'y'