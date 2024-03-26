# Locate the documentation for break, and determine what value break sets the return value to for the while loop.

# https://docs.ruby-lang.org/en/3.3/syntax/control_expressions_rdoc.html#label-break+Statement

# break returns nil when no arguments are passed to break, or the value of the argument when an argument is provided. 
# break accepts a value that supplies the result of the expression it is “breaking” out of:

result = [1, 2, 3].each do |value|
  break value * 2 if value.even?
end

p result # prints 4

# if more than 1 argument is passed to break, then, or course, an array is returned:

x = 1
y = 3
while x < 2
  x += 1
  y += 1
  break x,y if x == 2
end
# => [2, 4]