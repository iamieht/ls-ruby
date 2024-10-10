# Ex1
def example(str)
  i = 3
  loop do
    puts str
    i -= 1
    break if i == 0
  end
end

example('hello')


# Ex2
animal = "dog"

loop do |_|
  animal = "cat"
  var = "ball"
  break
end

puts animal
puts var

=begin
**Answer**
This code outputs `cat` and raises a NameError exception on line 24

On line 1, the local variable `animal` is initialized and references a string object with value `dog`.

On line 3, the `loop` methos is invoked and gets passed a `do..end` block as an argument.

On line 4, `animal` is reassigned to the string `ball` and on line 5, the `break` statement stops the loop execution.

On line 7, the `puts` method is called with `animal` as an argument, outputting `cat`.

On line 8, the `puts` method is called with `var` as an argument, raising a NameError exception as the local variable `var` is not accesible from the outer scope as it was initialized within a block.

This code demonstrates the concept of local variable scope in relation to blocks after a method invocation.
=end


# Ex3
x = "outer"
2.times do
  x = "inner"
  2.times do
    puts x
  end
end
puts x

# Ex4
MAX_VALUE = 100

[1, 2, 3].each do |num|
  MAX_VALUE = 200 if num == 2
end

puts MAX_VALUE

# Ex5
result = [1, 2, 3, 4, 5].map do |num|
  num * 2 if num.even?
end
p result