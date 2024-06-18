# Assignment: Rock, Paper, Scissors, Lizard, Spock
# Author: Ivan E. Hernandez T.
# Launch School: RB101
require 'yaml'

# Constants #
MESSAGES = YAML.load_file('rpsls.yml')
LANG = 'en'
RULES = {
  rock: ['lizard', 'scissors'],
  paper: ['spock', 'rock'],
  scissors: ['paper', 'lizard'],
  spock: ['rock', 'scissors'],
  lizard: ['spock', 'paper']
}

# Helper Functions
def message(lang, msg)
  MESSAGES[lang][msg]
end

def prompt(msg)
  message = message(LANG, msg)
  puts "=> #{message}"
end


# def win?(first, second)
#   (first == 'rock' && second == 'scissors') ||
#     (first == 'paper' && second == 'rock') ||
#     (first == 'scissors' && second == 'paper')
# end

# def display_result(player, computer)
#   if win?(player, computer)
#     prompt("You won!")
#   elsif win?(computer, player)
#     prompt("Computer won!")
#   else
#     prompt("It's a tie!")
#   end
# end

# loop do
#   choice = ''
#   loop do
#     prompt("Choose one: #{VALID_CHOICES.join(', ')}")
#     choice = gets.chomp

#     if VALID_CHOICES.include?(choice)
#       break
#     else
#       prompt("That's not a valid choice.")
#     end
#   end

#   computer_choice = VALID_CHOICES.sample

#   puts "You chose: #{choice}; Computer chose: #{computer_choice}"

#   display_result(choice, computer_choice)

#   prompt("Do you want to play again?")
#   answer = gets.chomp
#   break unless answer.downcase.start_with?('y')
# end

# prompt("Thank you for playing. Good bye!")

# Unit Tests
puts RULES[:rock][0]
puts message(LANG, 'welcome')
prompt('welcome')

