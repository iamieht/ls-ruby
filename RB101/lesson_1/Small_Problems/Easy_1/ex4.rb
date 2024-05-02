# What's my Bonus?

## Problem (P)
# Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary. If the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.

# - Inputs:
#   - positive integer
#   - boolean 
# - Outputs:
#   - integer
# - Explicit Rules:
#   - If the boolean is true, the bonus should be half of the salary. If the    boolean is false, the bonus should be 0.   
# - Implicit Rules:


## Examples/Test Cases (E)
# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000

## Data Structures
# - Integer 
# - Boolean


## Algorithm
# - Define a method calculate_bonus with two parameters: salary (integer) and bonus? (boolean)
#   - Create a conditional and check for bonus?
#   - If true return salary + 50% salary
#   - Else return salary

def calculate_bonus(salary, bonus)
  return bonus ? salary * 0.5 : 0
end


puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000