# Assignment: Mortgage / Car Loan Calculator
# Author: Ivan E. Hernandez T.
# Launch School: RB101

require 'yaml'
### Constants ###########
MESSAGES = YAML.load_file('loan_calculator_messages.yml')
LANGUAGE = 'en'
MONTHS_IN_YEAR = 12

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
  print "=> #{message}"
  gets.chomp
end

def get_loan_amount
  loop do
    loan_amount = user_input('loan_amount')

    if number?(loan_amount)
      return loan_amount.to_f
    else
      prompt('valid_number')
    end
  end
end

def get_loan_term
  loop do
    loan_term = user_input('loan_term')

    if number?(loan_term)
      return year_2_months(loan_term)
    else
      prompt('valid_month')
    end
  end
end

def get_answer
  loop do
    answer = user_input('new_calculation')

    if valid_answer?(answer)
      return answer
    else
      prompt('valid_answer')
    end
  end
end

def get_interest_rate
  loop do
    interest_rate = user_input('interest_rate')

    if number?(interest_rate) && interest_rate?(interest_rate)
      return interest_rate.to_f
    else
      prompt('valid_interest_rate')
    end
  end
end

def calc_monthly_interest_rate(apr)
  apr / MONTHS_IN_YEAR
end

def integer?(number)
  (number.to_i.to_s == number) && number.to_i > 0
end

def float?(number)
  (number.to_f.is_a? Numeric) && number.to_f > 0
end

def number?(number)
  integer?(number) || float?(number)
end

def interest_rate?(interest_rate)
  interest_rate.to_f > 0 && interest_rate.to_f <= 100
end

def valid_answer?(answer)
  valid_answers = ['y', 'yes', 'n', 'no']
  !answer.empty? && valid_answers.include?(answer.downcase)
end

def calc_loan(loan_amount, monthly_interest_rate, loan_term)
  loan_amount * (monthly_interest_rate /
                (1 - ((1 + monthly_interest_rate)**(-loan_term))))
end

def format_number(number)
  number.to_s.gsub(/(\d)(?=(\d{3})+(?!\d))/, "\\1,")
end

def year_2_months(loan_term)
  years = loan_term.to_i
  months = loan_term.split(".")[1].to_i
  (years * MONTHS_IN_YEAR) + months
end

def another_calculation?(answer)
  answer == 'y' || answer == 'yes'
end

def clear
  system "clear"
end

def display_summary(loan_obj)
  puts
  puts messages('results', LANGUAGE)

  puts "#{messages('label_loan_amount', LANGUAGE).ljust(30)} = $#{
    format_number(loan_obj[:loan_amount])}"
  puts "#{messages('label_loan_term', LANGUAGE).ljust(30)} = #{
    loan_obj[:loan_term]}"
  puts "#{messages('label_apr', LANGUAGE).ljust(30)} = #{
    loan_obj[:apr]} %"
  puts "#{messages('label_mpr', LANGUAGE).ljust(30)} = #{
    loan_obj[:monthly_interest_rate].round(4)} %"
  puts "#{messages('label_m_payment', LANGUAGE).ljust(30)} = #{
    format_number(loan_obj[:monthly_payment].round(2))}"
  puts "#{messages('label_t_payments', LANGUAGE).ljust(30)} = #{
    format_number(loan_obj[:total_payments].round(2))}"
  puts "#{messages('label_interests', LANGUAGE).ljust(30)} = #{
    format_number(loan_obj[:total_interest].round(2))}"

  puts messages('separator', LANGUAGE)
end

### Main Program ##########

clear
prompt('welcome')
prompt('separator')
puts

loop do
  # Initialize loan object
  loan_obj = {
    loan_amount: nil,
    loan_term: nil,
    apr: nil,
    monthly_interest_rate: nil,
    monthly_payment: nil,
    total_payments: nil,
    total_interest: nil
  }
  # User Input
  loan_amount = get_loan_amount
  loan_term   = get_loan_term
  apr         = get_interest_rate

  # Calculations
  annual_interest_rate  = apr / 100
  monthly_interest_rate = calc_monthly_interest_rate(annual_interest_rate)
  monthly_payment       = calc_loan(
    loan_amount, monthly_interest_rate, loan_term
  )
  total_payments        = (monthly_payment * loan_term)
  total_interest        = (total_payments - loan_amount)

  # Build loan object
  loan_obj[:loan_amount]            = loan_amount
  loan_obj[:loan_term]              = loan_term
  loan_obj[:apr]                    = apr
  loan_obj[:monthly_interest_rate]  = monthly_interest_rate
  loan_obj[:monthly_payment]        = monthly_payment
  loan_obj[:total_payments]         = total_payments
  loan_obj[:total_interest]         = total_interest

  # Display the results
  display_summary(loan_obj)

  # Another calculation?
  puts
  answer = get_answer

  break if !another_calculation?(answer)
  clear
end

prompt('goodbye')
