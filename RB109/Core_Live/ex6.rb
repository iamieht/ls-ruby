=begin
Session 12.09.2024


=end

def a
  3
end

a = 1

loop do |a|
  a = 2
  break
end

puts a

###

1.times do
  a = 1

  loop do |a|
    a = 2
    break
  end

  puts a
end

##

def my_method
  a = 0
  1.times do
    a = 1

    loop do |a|
      a = 2
      break
    end

    puts a
    break
  end
end

# How many variable a's? only 2

## Ex

# Explain what happens when this code executes. What does `counter` reference?
counter = 3

loop do |counter|
  puts "I'm skippin' rocks. This rock skipped #{counter} times!"
  counter += 1
end

## Bonus Questions ##
# 1. Is the `counter` on line 4 the same as the `counter` on line 2?
# 2. What do we need to know about Ruby methods to know what the inner `counter` variable references?
# 3. What happens when we run this code if we get rid of the block parameter, `|counter|`?

