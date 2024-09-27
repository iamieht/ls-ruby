def compute_sum(number)
  total = 0
  1.upto(number) { |value| total += value }
  total
end

number = 5
sum = compute_sum(number)
p sum
p number

=begin
This code snippet demonstrates the use of the upto method in Ruby. Here's a description of what it does:
1.  1.upto(number) creates a range from 1 to the value of number.
2.  The block { |value| total += value } is executed for each number in this range.
3.  In each iteration, value represents the current number in the range.
4.  total += value adds the current value to a variable called total.
This snippet is essentially summing up all integers from 1 to number and storing the result in total. It's a concise way to calculate the sum of a sequence of numbers.
This code demonstrates the use of Ruby's Integer#upto method and block syntax, which are concepts covered in the RB101 course.
=end