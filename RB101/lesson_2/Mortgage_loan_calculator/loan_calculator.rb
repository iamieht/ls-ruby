# Assignment: Mortgage / Car Loan Calculator
# Author: Ivan E. Hernandez T.
# Launch School: RB101

require 'yaml'
### Constants ###########
MESSAGES = YAML.load_file('loan_calculator_messages.yml')
LANGUAGE = 'en'
LABELS = {
  0 => 'label_loan_amount',
  1 => 'label_loan_term',
  2 => 'label_apr',
  3 => 'label_mpr',
  4 => 'label_m_payment',
  5 => 'label_t_payments',
  6 => 'label_interests'
}

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
  apr / 12
end

def integer?(number)
  (number.to_i.to_s == number) && number.to_i > 0
end

def float?(number)
  # (number.to_f.to_s == number) && number.to_f > 0
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
  # !answer.empty? && (answer.downcase == 'y' || answer.downcase == 'n')
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
  (years * 12) + months
end

def another_calculation?(answer)
  answer == 'y' || answer == 'yes'
end

### Main Program ##########

system "clear"
prompt('welcome')
prompt('separator')
puts

loop do
  # User Input
  loan_amount = get_loan_amount
  loan_term = get_loan_term
  apr = get_interest_rate

  # Calculations
  annual_interest_rate  = apr / 100
  monthly_interest_rate = calc_monthly_interest_rate(annual_interest_rate)
  monthly_payment = calc_loan(loan_amount, monthly_interest_rate, loan_term)
  total_payments = (monthly_payment * loan_term)
  total_interest = (total_payments - loan_amount)

  # Display the results
  puts
  puts messages('results', LANGUAGE)
  puts "#{messages(LABELS[0], LANGUAGE).ljust(30)} = $#{
    format_number(loan_amount)}"
  puts "#{messages(LABELS[1], LANGUAGE).ljust(30)} = #{
    loan_term}"
  puts "#{messages(LABELS[2], LANGUAGE).ljust(30)} = #{
    apr} %"
  puts "#{messages(LABELS[3], LANGUAGE).ljust(30)} = #{
    monthly_interest_rate.round(4)} %"
  puts "#{messages(LABELS[4], LANGUAGE).ljust(30)} = $#{
    format_number(monthly_payment.round(2))}"
  puts "#{messages(LABELS[5], LANGUAGE).ljust(30)} = $#{
    format_number(total_payments.round(2))}"
  puts "#{messages(LABELS[6], LANGUAGE).ljust(30)} = $#{
    format_number(total_interest.round(2))}"

  puts messages('separator', LANGUAGE)

  # Another calculation?
  puts
  answer = get_answer

  break if !another_calculation?(answer)
  system "clear"
end

prompt('goodbye')
