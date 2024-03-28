loop do
  puts "How many output lines do you want? Enter a number >= 3 (Q to Quit):"
  input = gets.chomp

  break if input == 'q' || input == "Q"
  
  iterations = input.to_i

  if iterations < 3
    puts "That's not enough lines."
  else
    iterations.times { puts "Launch School is the best!" }
  end
end
