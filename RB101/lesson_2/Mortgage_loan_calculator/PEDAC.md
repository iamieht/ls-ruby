# Assignment: Mortgage / Car Loan Calculator

## Problem
build a mortgage calculator (or car payment calculator -- it's the same thing) that determines the monthly payment assuming that interest is compounded monthly.

### Inputs
- loan amount
- annual percentage rate (apr)
- loan duration

### Outputs
- Monthly Payments
- Total payments for the loan duration
- Total Interest

### Rules
- monthly interest rate = apr / 12
- monthly_payment = loan_amount * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-loan_duration_months)))
- loan duration (input) = in months
- interest rate = in percentage

## Examples/Test Cases
Loan Amount = $100_000
Loan Duration = 120 months
Interest Rate = 6%

Monthly Payment = $1,110.21
Total of 120 Payments = $133,224.60
Total Interest = $33,224.60

## Data Structures
- String
- Floats

## Algorithm
- Create a YAML file for messages
- Declare a constant MESSAGES
- Declare a constant LANGUAGE
- Define a messages method with two parameters (message, lang='en')
    - MESSAGES[lang][message]
- Define a prompt method with a single parameter (key)
    - Initialize a variable message = messages(key, LANGUAGE)
    - output ("=> #{message})
- Define a method user_input(request)
    - input = request
- Define a method req_loan_amount()
    - prompt('Loan Amount')
    - input = gets.chomp
    - validate_input
    - return input
- Define a method req_loan_duration()
    - prompt('Loan Duration')
    - input = gets.chomp
    - validate_input
    - return input
- Define a method req_interest_rate()
    - prompt('Interest Rate')
    - input = gets.chomp
    - validate_input
    - return input
- Define a method calc_monthly_interest_rate(apr)
    - return (apr / 100) / 12
- Define a method calc_loan(loan_amount, monthly_int_rate, loan_duration)
    - monthly_payment = loan_amount * (monthly_int_rate / (1 - (1 + monthly_int_rate) ** (-loan_duration)))
    - return montlhy_payment.round(2)
- Define a method amount?
    - Check for numeric values int or float
- Define a method months?
    - Check for int values
- Define a method interest_rate?
    - Check for 0 < float <= 100

## Further exploration
- Pay back: Daily / Weekly / Monthly / Quarterly / Yearly / 
- Interest Rate: Years / Months