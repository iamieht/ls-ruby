number = 2024
ones = number % 10
number = number / 10
tens = number % 10
number = number / 10
hundreds = number % 10
number = number / 10

puts "Ones: #{ones}"
puts "Tens: #{tens}"
puts "Hundreds: #{hundreds}"
puts "Thousands: #{number}"