# Breakfast, Lunch, or Dinner? (Part 3)
# What will the following code print? Why?

def meal
  return 'Breakfast'
  'Dinner'
end

puts meal

# The invocation of the meal method is passed as an argument of the puts method, outputing the return string value 'Breakfast'. As there is an explicit return statement in the meal method, this causes thee exit of the method and any expression after the return value won't be evaluated.

# Based on the knowledge that return exits the method, you should be able to determine that the return value is "Breakfast". Even though "Dinner" is the last line, when return is executed, it tells the method to end, which means anything after that line won't be processed.