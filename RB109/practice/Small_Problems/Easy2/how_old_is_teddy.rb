=begin
Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.
=end
age = rand(20..200)
age2 = (20..200).to_a.sample

puts "Teddy is #{age} years old"
puts "Teddy is #{age2} years old"

# Example

# Teddy is 69 years old!

## Further Exploration
def get_name
  name = gets.chomp
  return "Teddy" if name.empty?
  name
end

def get_age
  age = rand(20..200)
end

puts "What is your name?"
name = get_name
age = get_age

puts "#{name} is #{age} years old"