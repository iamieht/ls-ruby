# Dividing Numbers
# Write a program that asks the user to enter two integers, then prints the results of dividing the first by the second. The second number must not be 0.
numerator = nil
denominator = nil

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

loop do
  puts "Please enter the numerator:"
  numerator = gets.chomp

  break if valid_number?(numerator)
  puts "Invalid input. Only integers are allowed."
end

loop do
  puts "Please enter the denominator:"
  denominator = gets.chomp

  break if valid_number?(denominator) && denominator.to_i > 0
  if !valid_number?(denominator)
    puts "Invalid input. Only integers are allowed."
  else
    puts "Invalid input. A denominator of 0 is not allowed."
  end
end

puts "#{numerator} / #{denominator} is #{numerator.to_i / denominator.to_i}"