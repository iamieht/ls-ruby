# Write a program that displays a welcome message, but only after the user enters the correct password, where the password is a string that is defined as a constant in your program. Keep asking for the password until the user enters the correct password.

PASSWORD = "SecreT"

loop do
  puts ">> Please enter your password:"
  pass = gets.chomp

  break if pass == PASSWORD
  puts "Invalid password!"
end

puts "Welcome!"