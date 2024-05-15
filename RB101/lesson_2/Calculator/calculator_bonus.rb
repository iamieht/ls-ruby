# Assignment: Calculator Bonus Features
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
LANGUAGE = 'es'

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(message)
  puts "=> #{message}"
end

def integer?(number)
  number.to_i.to_s == number
end

def float?(number)
  number.to_f.to_s == input
end

def number?(number)
  integer?(number) || float?(number)
end

def operation_to_message(operator)
  case operator
  when '1' then 'Adding'
  when '2' then 'Subtracting'
  when '3' then 'Multiplying'
  when '4' then 'Dividing'
  end
end

prompt(messages('welcome', LANGUAGE))
name = nil
loop do
  name = gets.chomp

  if name.empty?
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt("Hi #{name}!")

loop do # main loop
  number1 = nil
  loop do
    prompt(messages('first_number', LANGUAGE))
    number1 = gets.chomp

    if number?(number1)
      break
    else
      prompt(messages('valid_number', LANGUAGE))
    end
  end

  number2 = nil
  loop do
    prompt(messages('second_number', LANGUAGE))
    number2 = gets.chomp

    if number?(number2)
      break
    else
      prompt(messages('valid_number', LANGUAGE))
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(operator_prompt)

  operator = nil
  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(messages('operator', LANGUAGE))
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when '1' then number1.to_i() + number2.to_i()
           when '2' then number1.to_i() - number2.to_i()
           when '3' then number1.to_i() * number2.to_i()
           when '4' then number1.to_f() / number2.to_f()
           end

  prompt("The result is #{result}")

  prompt(messages('calculate_again', LANGUAGE))
  answer = gets.chomp
  break unless answer.downcase().start_with?('y')
end

prompt(messages('goodbye', LANGUAGE))

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
