# x = 0
# 3.times do
#   x += 1
# end
# puts x

y = 0
3.times do
  y += 1
  x = y
end
puts x

# What does x print to the screen in each case? Do they both give errors? Are the errors different? Why?

# First code snippet x = 3
# Second code snippet NameError x is initialized within the code block, so it's not accessible in th outer scope