# The result of the following statement will be an error:
#puts "the value of 40 + 2 is " + (40 + 2)

# Why is this and what are two possible ways to fix this?
# You cannot concatenate an object of type String with an arithmetic operation. To solve this, you can use String interpolation, or do an explicit conversion of the expression (40 + 2) to string
puts "the value of 40 + 2 is #{40 + 2}"
puts "the value of 40 + 2 is " + (40 + 2).to_s