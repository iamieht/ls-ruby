# Write a method that counts down to zero using recursion.

def countdown(number)
  if number == 0
    puts number
  elsif number < 0
    puts number
    countdown(number + 1)    
  else
    puts number
    countdown(number - 1)
  end
end

countdown(10)
countdown(-3)
    