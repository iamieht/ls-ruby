# Assignment: Calculator Bonus Features

def prompt(message)
  puts "=> #{message}"
end

def number?(number)
  number.instance_of?(Float) || number.instance_of?(Integer)
end

def operation_to_message(operator)
  case operator
  when '1' then 'Adding'
  when '2' then 'Subtracting'
  when '3' then 'Multiplying'
  when '4' then 'Dividing'
  end
end

## Examples/Test Cases
# prompt("Welcome to Calculator with Bonus Features!!!")
# puts number?("a")
# puts number?(0)
# puts number?(1)
# puts number?(1.5)
puts operation_to_message("1")
puts operation_to_message("2")
puts operation_to_message("3")
puts operation_to_message("4")
