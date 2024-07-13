=begin
Write a program that takes a number from the user between 0 and 100 and reports back whether the number is between 0 and 50, 51 and 100, or above 100.
=end

number = (0..101).to_a.sample

case
  when number <= 50 then puts "Number #{number} is between 0 and 50"
  when number <= 100 then puts "Number #{number} is between 51 and 100"
  else                    puts "Number #{number} is above 100"
end

