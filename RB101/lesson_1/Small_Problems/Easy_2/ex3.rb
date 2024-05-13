# Tip calculator

## Problem (P)
#  Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The program must compute the tip and then display both the tip and the total amount of the bill.


# - Inputs:
#   - Bill amount: float
#   - Tip Rate: float
# - Outputs:
#   - The tip amount in USD
#   - The total = bill amount + tip
# - Explicit Rules:
#   - tip rate is a integer or float number
# - Implicit Rules:
#   - Currency is USD


## Examples/Test Cases (E)
#  What is the bill? 200
# What is the tip percentage? 15

# The tip is $30.0
# The total is $230.0

## Data Structures
# - Float
# - String

## Algorithm
#  - Define a method get_amount with a single parameter message
#   - Initialize a variable value = gets.chomp.to_f
#   - Return value
#  - Define a method get_tip_amount(tip_rate, bill_amount)
#   - return (bill_amount * tip_rate) / 100
#  - Initialize a variable bill_amount = get_amount("What is the bill?")
#  - Initialize a variable tip_rate = get_amount("What is the tip percentage?")
#  - Initialize a variable tip_amount = get_tip_amount(tip_rate, bill_amount)
#  - Initialize a variable total = bill_amount + tip_amount
# - Output "The tip is $#{tip_amount}"
# - Output "The total is $#{total}"

## Code
def get_amount(message)
  puts ">> #{message}"
  value = gets.chomp.to_f
  return value
end

def get_tip_amount(tip_rate, bill_amount)
  (bill_amount * tip_rate) / 100
end

bill_amount = get_amount("What is the bill?")
tip_rate = get_amount("What is the tip percentage?")
tip_amount = get_tip_amount(tip_rate, bill_amount)
total = bill_amount + tip_amount

puts "The tip is $#{format('%.2f', tip_amount)}"
puts "The total is $#{format('%.2f', total)}"