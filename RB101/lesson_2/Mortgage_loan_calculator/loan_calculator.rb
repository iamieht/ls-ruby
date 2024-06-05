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
  print "=> #{message}"
  input = gets.chomp
end

def get_loan_amount()
  loop do
    loan_amount = user_input('loan_amount')

    if number?(loan_amount)
      return loan_amount.to_f
    else
      prompt('valid_number')
    end
  end
end

def get_loan_term()
  loop do
    loan_term = user_input('loan_term')

    if integer?(loan_term)
      return loan_term.to_i
    else
      prompt('valid_month')
    end
  end
end

def get_answer()
  loop do
    answer = user_input('new_calculation')

    if valid_answer?(answer)
      return answer
    else
      prompt('valid_answer')
    end
  end

end

def get_interest_rate()
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
  number.to_i.to_s == number
end

def float?(number)
  number.to_f.to_s == number
end

def number?(number)
  integer?(number) || float?(number)
end

def interest_rate?(interest_rate)
  interest_rate.to_f > 0 && interest_rate.to_f <= 100
end

def valid_answer?(answer)
  !answer.empty? && (answer.downcase == 'y' || answer.downcase == 'n')
end

def calc_loan(loan_amount, monthly_interest_rate, loan_term)
  monthly_payment = loan_amount *
                    (monthly_interest_rate /
                    (1 - (1 + monthly_interest_rate)**(-loan_term)))
end

def display_results(loan_amount, loan_term, apr, monthly_interest_rate, monthly_payment, total_payments, total_interest)
  puts
  puts messages('results')
  puts "Loan Amount               = $#{loan_amount}"
  puts "Loan Term                 = #{loan_term} Months"
  puts "Annual Interest Rate      = #{apr} %"
  puts "Monthly Interest Rate     = #{monthly_interest_rate.round(4)} %"
  puts "Monthly Payment           = $#{monthly_payment.round(2)}"
  puts "Total of #{loan_term} Payments     = $#{total_payments.round(2)}"
  puts "Total Interest            = $#{total_interest.round(2)}"
  puts messages('separator')
end


### Main Program ##########
def main()
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
    annual_interest_rate = apr / 100
    monthly_interest_rate = calc_monthly_interest_rate(annual_interest_rate)
    monthly_payment = calc_loan(loan_amount, monthly_interest_rate, loan_term)
    total_payments = monthly_payment * loan_term
    total_interest = total_payments - loan_amount

    # Display the results
    display_results(loan_amount, loan_term, apr, monthly_interest_rate, monthly_payment, total_payments, total_interest)

    # refactor
    puts
    answer = get_answer

    if answer == 'n'
      break
    end
    system "clear"

  end

  prompt('goodbye')

end

main

#"10000".gsub(/(\d)(?=(\d{3})+(?!\d))/, "\\1,")



