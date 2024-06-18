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
# VALID_CHOICES = [
#   'r', 'rock',
#   'p', 'paper',
#   's', 'scissors',
#   'l', 'lizard',
#   'sp', 'spock'
# ]
VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']
VALID_SHORT_CUTS = ['r', 'p', 's', 'l', 'sp']

# Helper Functions
def message(lang, msg)
  MESSAGES[lang][msg]
end

def prompt(msg)
  message = message(LANG, msg)
  puts "=> #{message}"
end

def user_input(msg)
  message = message(LANG, msg)
  puts "=> #{message}"
  gets.chomp.downcase
end

def display_rules
end

def get_player_choice
  loop do
    choice = user_input('hand')

    if valid_choice?(choice)
      return choice
    else
      prompt('valid_choice')
    end
  end
end

def get_computer_choice
  VALID_CHOICES.sample
end

def valid_choice?(choice)
  VALID_CHOICES.include?(choice) || VALID_SHORT_CUTS.include?(choice)
end

def get_score
end

def update_score
end

def display_score
end

def win?
end

def play_again?
end

def clear
  system "clear"
end

# Main Game logic
def rpsls
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
# puts RULES[:rock][0]
# puts message(LANG, 'welcome')
# prompt('welcome')
# get_player_choice
# p VALID_CHOICES
# puts valid_choice?('')

