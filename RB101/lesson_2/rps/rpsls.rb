# Assignment: Rock, Paper, Scissors, Lizard, Spock
# Author: Ivan E. Hernandez T.
# Launch School: RB101
require 'yaml'

# Constants #
MESSAGES = YAML.load_file('rpsls.yml')
LANG = 'en'
RULES = {
  'rock' => ['lizard', 'scissors'],
  'paper' => ['spock', 'rock'],
  'scissors' => ['paper', 'lizard'],
  'spock' => ['rock', 'scissors'],
  'lizard' => ['spock', 'paper']
}
VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']
VALID_SHORT_CUTS = ['r', 'p', 's', 'l', 'sp']
WINS = 3

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
  prompt('round')
  puts("|---------------------------------------------|
| Scissors cuts Paper covers Rock             |
| Rock crushes Lizard poisons Spock           |
| Spock smashes Scissors decapitates Lizard   |
| Lizard eats Paper disproves Spock           |
| Spock vaporizes Rock crushes Scissors       |
|---------------------------------------------|")
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

def choice_to_name(choice)
  case choice
  when 'r' then 'rock'
  when 'p' then 'paper'
  when 's' then 'scissors'
  when 'l' then 'lizard'
  when 'sp' then 'spock'
  else choice
  end
end

def display_choices(player, computer)
  puts
  puts "You chose: #{choice_to_name(player)}"
  puts "Computer chose: #{choice_to_name(computer)}"
  puts
end

def init_scores
  {
    player: 0,
    computer: 0
  }
end

def display_score(scores)
  puts
  puts "Score = Player #{scores[:player]} / Computer #{scores[:computer]}"
  puts
end

def final_score(scores)
  puts
  puts "Final Score = Player #{scores[:player]} / Computer #{scores[:computer]}"
  puts
end

def increment_score(player, scores)
  scores[player] += 1
end

def win?(first, second)
  RULES.fetch(first).include?(second)
end

def display_result(player, computer, scores)
  player = choice_to_name(player)
  computer = choice_to_name(computer)

  if win?(player, computer)
    prompt("player_wins")
    increment_score(:player, scores)
  elsif win?(computer, player)
    prompt("pc_wins")
    increment_score(:computer, scores)
  else
    prompt("tie")
  end
end

def play_again?
  puts
  answer = user_input('play_again')
  answer == 'y' || answer == 'yes'
end

def clear
  system "clear"
end

def help
  answer = user_input('rules')

  if valid_help?(answer)
    clear()
    display_rules()
    start_game()
  else
    clear()
  end
end

def valid_help?(answer)
  !answer.empty? && (answer.downcase == 'h' || answer.downcase == 'help')
end

def start_game
  user_input('start_game')
  clear()
end

# Main Game logic
def rpsls
  clear()
  prompt('welcome')
  help()

  loop do
    scores = init_scores
    loop do
      break if scores[:player] == WINS || scores[:computer] == WINS
      display_score(scores)

      player_choice = get_player_choice
      computer_choice = get_computer_choice

      display_choices(player_choice, computer_choice)
      display_result(player_choice, computer_choice, scores)
    end
    final_score(scores)

    # Play Again?
    break unless play_again?
    clear()
  end
end

rpsls
