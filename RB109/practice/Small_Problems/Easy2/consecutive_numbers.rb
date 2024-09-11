=begin
Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.
=end

def compute_sum(int)
  (1..int).inject(:+)
end

def compute_product(int)
  (1..int).inject(1, :*)
end

puts "Please enter an integer greater than 0:"
integer = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp

if operation == 's'
  puts "The sum of the integers between 1 and #{integer} is #{compute_sum(integer)}."
elsif operation == 'p'
  puts "The product of the integers between 1 and #{integer} is #{compute_product(integer)}."
else
  puts "Invalid choice"
end
