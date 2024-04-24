# Get the Sum
loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
  break puts "That's correct!" if answer == 4
  puts "Wrong answer. Try again!"
end

# Solution #2
loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i

  if answer == 4
    puts "That's correct!"
    break
  end

  puts 'Wrong answer. Try again!'
end