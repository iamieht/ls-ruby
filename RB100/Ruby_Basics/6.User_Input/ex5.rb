# Write a program that prints 'Launch School is the best!' repeatedly until a certain number of lines have been printed. The program should obtain the number of lines from the user, and should insist that at least 3 lines are printed.
input = nil

loop do
  puts "How many output lines do you want? Enter a number >= 3:"
  input = gets.chomp.to_i
  
  if input < 3
    puts "That's not enough lines."
  else
    break
  end
end

input.times { puts "Launch School is the best!" }


