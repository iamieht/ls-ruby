=begin
Write a program that asks a user how old they are and then tells them how old they will be in 10, 20, 30 and 40 years
=end

puts "How old are you?"
age = gets.chomp.to_i

time = 0
4.times do
  time += 10
  puts "In #{time} years you will be #{age + time}"
end

