# 1. Uppercase Check

```ruby
def uppercase?(string)
  string == string.upcase
end

uppercase?('Four Score')
uppercase?('4SCORE!')
```

# 2. Stringy Strings
```ruby
def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end

puts stringy(4)
puts stringy(7)
```

# 3. Negative Number
```ruby
def negative(number)
  -number.abs
end

puts negative(5)
puts negative(-3)
puts negative(0)
```

# 4. Reverse the Digits in a Number
```ruby
def reversed_number(number)
  string = number.to_s
  reversed_string = string.reverse
  reversed_string.to_i
end

puts reversed_number(12345)
puts reversed_number(1)
```

# 5. Truthiness
```ruby
def test  
    puts "written assessment"
end

var = test
if var  
    puts "written assessment"
else  
    puts "interview"
end
```

# 6. Collection methods
```ruby
odd, even = [1, 2, 3].partition do |num|  
    num.odd?
end
p odd 
p even
```

