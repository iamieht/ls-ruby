# Your Age in Months
# Write a program that asks the user for their age in years, and then converts that age to months.

def age_to_months(age_in_years)
  return age_in_years * 12
end 

puts ">> What is your age in years?"
age = gets.chomp
age_in_months = age_to_months(age.to_i)

puts "You are #{age_in_months} months old."

