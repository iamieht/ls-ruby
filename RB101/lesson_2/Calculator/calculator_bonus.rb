# Assignment: Calculator Bonus Features
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

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

prompt(MESSAGES['welcome'])
name = nil
loop do
  name = gets.chomp

  if name.empty?
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

## Examples/Test Cases
# prompt("Welcome to Calculator with Bonus Features!!!")
# puts number?("a")
# puts number?(0)
# puts number?(1)
# puts number?(1.5)
# puts operation_to_message("1")
# puts operation_to_message("2")
# puts operation_to_message("3")
# puts operation_to_message("4")
