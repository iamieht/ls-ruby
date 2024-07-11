=begin
Add another section onto ex1.rb that prints the name of the user 10 times.
=end

puts "What is your name?"
name = gets.chomp

10.times { puts "Hi! #{name}" }
