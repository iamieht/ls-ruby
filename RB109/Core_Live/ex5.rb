# Explain what happens when we run this code and the output we will get.
greeting = 'Hello'

loop do
  greeting = 'Howdy'
  farewell = 'Goodbye'
  p greeting # what will be output by this line?
  p farewell # what will be output by this line?
  break
end

p greeting # what will be output by this line?
p farewell # what will be output by this line?

## Bonus Questions ##
# 1. How many `greeting` variables exist in this code? How many `farewell`?
# 2. What's the difference between the action happening on lines 5 & 6?
# 3. What are three distinct ways we could fix this code to get `Howdy` and `Goodbye`
#    as our only greetings that are output?