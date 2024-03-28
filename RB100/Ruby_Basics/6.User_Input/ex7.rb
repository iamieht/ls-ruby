# User Name and Password
PASSWORD = "SecreT"
USER_NAME = "admin"

loop do
  puts ">>Please enter user name:"
  user = gets.chomp
  puts ">> Please enter your password:"
  pass = gets.chomp

  break if pass == PASSWORD && user == USER_NAME
  puts ">> Authorization failed!"
end

puts "Welcome!"