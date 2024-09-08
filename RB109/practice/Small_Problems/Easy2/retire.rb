=begin
Build a program that displays when the user will retire and how many years she has to work till retirement.
=end

print "What is your age? "
age = gets.chomp.to_i

print "At what age would you like to retire? "
retire_age = gets.chomp.to_i

current_year = Time.now.year
years_to_work = retire_age - age

puts
puts "It's #{current_year}. You will retire in #{years_to_work + current_year}."
puts "You have only #{years_to_work} years of work to go!"


# Example
# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!