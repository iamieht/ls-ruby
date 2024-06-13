# Assignment: Rcok Paper Scissors Lizard Spock

## Problem
Build the game Rock Paper Scissors Lizar Spock

### Inputs
- Player: a String with value: rock, scissor, paper, lizard, spock

### Outputs
- Player Choice
- Computer Choice
- Score

### Rules
- Player chooses between these values: rock, scissor, paper, lizard, spock
- Computer sample one of the same values
- The player that wins 3 rounds is the winner
- The values can be chosen via full name or the initial letter, except spock that requires 'sp'
- Game rules: 1. "Scissors cuts Paper" / "Paper covers Rock" / "Rock crushes Lizard" / "Lizard Poisons Spock" / "Spock smashes Scissors" / "Scissors decapitates Lizard" / "Lizard eats Paper" / "Paper disproves Spock" / "Spock vaporizes Rock" / "Rock crushes Scissors"

## Examples/Test Cases
=> Welcome to Rock, Paper, Scissors, Lizard Spock

|------------ Rules ----------------|
| 1. "Scissors cuts Paper"          |
| 2. "Paper covers Rock"            |
| 3. "Rock crushes Lizard"          |
| 4. "Lizard Poisons Spock"         |
| 5. "Spock smashes Scissors"       |
| 6. "Scissors decapitates Lizard"  |
| 7. "Lizard eats Paper"            |
| 8. "Paper disproves Spock"        |
| 9. "Spock vaporizes Rock"         |
| 10. "Rock crushes Scissors"       |
|-----------------------------------|

=> Choose your hand: (r)ock, (p)aper, (s)cissors, (l)izard, (sp)ock
r or rock
=> Computer chose: paper
=> Computer wins! as "Paper covers Rock" 
=> Current Score = Player [0] / Computer [1]
... several iterations later
=> Current Score = Player [0] / Computer [3]
=> Computer WINS!
=> Do you want to play again?
no
=> Thanks for playing RPSLS!

## Data Structures
- Constants
- Arrays
- Strings

## Algorithm
- Create a YAML file for messages
- Declare a constant MESSAGES
- Declare a constant LANGUAGE
- Declare a constant RULES
    - create a hash: choice => what defeats
- Define a messages method with two parameters (message, lang='en')
    - MESSAGES[lang][message]
- Define a prompt method with a single parameter (key)
    - Initialize a variable message = messages(key, LANGUAGE)
    - output ("=> #{message})
- Define a method display_rules
    - Output rules in terminal
- Define a method get_player_choice
    - choice = gets.chomp
    - validate_choice(choice)
- Define a method get_computer_choice
    - RULES.sample
- Define a method validate_choice
    - check for valid input
- Define a method update_score(winner)
- Definbe a method get_score
    - returns the score of both player and computer
- Define a method display_score
- Define a method play_again?
- Define a method win?
    - based on the rules, determine the winner
- Define a main method rpsls
    - main logic
