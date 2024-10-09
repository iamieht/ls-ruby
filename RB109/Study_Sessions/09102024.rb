# def change_it(str)
#   p str.object_id
#   str.upcase!  # MIKE
# end

# name = "mike"
# p name.object_id
# change_it(name)
# puts name # MIKE

# On line 8, an object referenced by `name` is passed as an argument to `change_it` method invocation.

# On line 6, the local variable `name` is initialized and references a string object with value `mike`.
# On line 8, we call the `change_it` method with `name` as an argument.
# on line 8, the `change_it` method is invoked with `name` as an argument.



def example(str)
  i = 3
  loop do
    puts str
    i -= 1
    break if i == 0
  end
end

example('hello')

# On line 21, we call the `loop` method and passed a `do..end` block as an argument. Then on line 22, we call the `puts` method with `str` as an argument, outputting `hello`. On line 23, we decrement `i` by `1`. On line 23, we call the `-` method on the object referenced by `i` and passed in `1`` as an argument, this will return `2` and this will be reassigned to `i`. On line 24, the expression `if i == 0` evaluates as `false` and the loop continues.

# arr = [1, 2, 3, 4]
# counter = 0
# sum = 0

# loop do
#   sum += arr[counter]
#   counter += 1
#   break if counter == arr.size
# end

# puts "Your total is #{sum}"



def test(str)
  str += '!'
  str.downcase!
end

test_str = 'Written Assessment'
test(test_str)
puts test_str


