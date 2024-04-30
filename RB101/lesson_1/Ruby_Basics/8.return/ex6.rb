# Breakfast, Lunch, or Dinner? (Part 6)
# What will the following code print? Why?

def meal
  return 'Breakfast'
  'Dinner'
  puts 'Dinner'
end

puts meal #=> 'Breakfast'

# The first thing you should notice is the return keyword on the first line of the method. Based on what we've learned so far, we know that return immediately exits the method and returns the provided value. Knowing this, we can confidently say that the return value of meal will be "Breakfast". return will be executed upon the invocation of meal, which means meal will immediately end and return the value provided by return.