=begin
Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.
=end
def repeat(msg, times)
  times.times { puts msg }
end

#Example
repeat('Hello', 3)