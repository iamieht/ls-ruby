=begin
Searching 101
Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.
=end
numbers = []

while numbers.size < 6
  if numbers.size == 5
    puts "Enter the last number:"
    number = gets.chomp.to_i
    numbers << number
    puts(numbers.include?(number) ? "The number #{number} appears in #{numbers}" :
                                    "The number #{number} does not appear in #{numbers}")
  else
    puts "Enter the #{numbers.size + 1} number:"
    number = gets.chomp.to_i
    numbers << number
  end
end

# 6.times do |num|
#   if num == numbers.size
#     puts "Enter the last number:"
#   else
#     puts "Enter the #{num + 1} number:"
#     number = gets.chomp.to_i
#     numbers << number
#   end
# end

p numbers
