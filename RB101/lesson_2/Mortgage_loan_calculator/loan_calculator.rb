# Assignment: Mortgage / Car Loan Calculator
# Author: Ivan E. Hernandez T.
# Launch School: RB101

require 'yaml'
### Constants ###########
MESSAGES = YAML.load_file('loan_calculator_messages.yml')
LANGUAGE = 'en'

### Helper Functions ####
def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(key)
  message = messages(key, LANGUAGE)
  puts "=> #{message}"
end

def user_input(key)
  message = messages(key, LANGUAGE)
  print "==> #{message} "
  input = gets.chomp
end

def get_loan_amount()
  loan_amount = user_input('loan_amount')
end

def get_loan_term()
  loan_duration = user_input('loan_term')
end

def get_interest_rate()
  interest_rate = user_input('interest_rate')
end

def calc_monthly_interest_rate(apr)
  apr / 12
end

def calc_loan(loan_amount, monthly_int_rate, loan_duration)
end

def number?(number)
  integer?(number) || float?(number)
end

def month?(month)
end

def interest_rate?(interest_rate)
end

### Main Program ##########
def main()
  prompt('welcome')

  # User Input
  loan_amount = get_loan_amount
  loan_term = get_loan_term
  apr = get_interest_rate

  # Calculations
  monthly_interest_rate = calc_monthly_interest_rate(apr)

  # puts
  puts "Loan Amount = #{loan_amount}"
  puts "Loan Term = #{loan_term}"
  puts "Interest Rate = #{apr}"
  puts "Monthly Interest Rate = #{monthly_interest_rate}"

end

main