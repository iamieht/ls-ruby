# Launch School Printer (Part 2)
loop do
  puts "How many output lines do you want? Enter a number >= 3 (Q to quit):"
  input = gets.chomp

  break if input.downcase == 'q'
    
  if input.to_i < 3
    puts "That's not enough lines."
  else
    input.to_i.times { puts "Launch School is the best!" }
  end
end