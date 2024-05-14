# Greeting a user

## Problem (P)
## Write a program that will ask for user's name. The program will then greet the user. If the user writes "name!" then the computer yells back to the user.

### Inputs:
# - name = String
### Output
# - 'Hello' name
# - 'HELLO' name.upcase. WHY ARE WE SCREAMING?

### Rules
# - If name ends with ! the output is all uppercase, otherwise:
# - Hello name
# - Empty name is invalid, repeat the question
# - Q quits

## Examples/Test Cases (E)
# What is your name? Bob
# Hello Bob.

# What is your name? Bob!
# HELLO BOB. WHY ARE WE SCREAMING?

## Data Structures (D)
# - String

## Algorithm (A)
# - Welcome to the program
# - In a loop ask the user for name or Q to quit
#   - If user_input is Q, break and say goodbye
#   - if user_input is name:
#     - validates that name.empty?
#     - If empty provide feedback and ask again for the name
#     - If valid, output 'Hello #{name}.'
#   - If user_input is name!:
#     - output 'HELLO #{name.upcase}. WHY ARE WE SCREAMING?'

# Code
# def get_name(message)
#   puts ">> #{message}"
#   name = gets.chomp
#   return name
# end

puts "Welcome to greeting a user!!!"
loop do
  puts "What is your name? (Q to Quit)"
  answer = gets.chomp

  if answer.downcase == 'q'
    break
  end

  if answer[-1] == '!'
    puts "HELLO #{answer.chop!.upcase}. WHY ARE WE SCREAMING?"
  else
    puts "Hello #{answer}."
  end
  puts
end
