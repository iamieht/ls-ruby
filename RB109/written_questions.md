# RB109 Written Questions

## Local Variable Scope

What does the following code output and return? Why? What concept does it demonstrate?

### Example 1 

```ruby
a = “Hello”
b = a
a = “Goodbye”

puts a
puts b
```

### Example 2
```ruby
a = 4

loop do  
  a = 5  
  b = 3

  break
end

puts a
puts b
```

### Example 3
```ruby
a = 4
b = 2

loop do  
  c = 3  
  a = c  
  break
end

puts a
puts b
```

### Example 4
```ruby
def example(str)
  i = 3  
  loop do    
    puts str    
    i -= 1    
    break if i == 0  
  end
end

example('hello')
```

### Example 5
```ruby
def greetings(str)  
  puts str  
  puts "Goodbye"
end

word = "Hello"
greetings(word)
```

### Example 6
```ruby
arr = [1, 2, 3, 4]
counter = 0
sum = 0

loop do  
  sum += arr[counter]  
  counter += 1  
  break if counter == arr.size
end 

puts "Your total is #{sum}"
```

### Example 7
```ruby
a = 'Bob'

5.times do |x|  
  a = 'Bill'
end

p a
```

### Example 8
```ruby
animal = "dog"

loop do |_|  
  animal = "cat"  
  var = "ball"  
  break
end

puts animal
puts var
```

## Variable Shadowing

### Example 1

```ruby
a = 4 
b = 22.times do |a|  
    a = 5  
    puts a
end
puts a
puts b
```

### Example 2
```ruby
animal = "dog"

loop do |_|  
  animal = "cat"  
  var = "ball"  
  break
end

puts animal
puts var
```

### Example 3
```ruby
n = 101.times do |n|  
    n = 11
end
puts n
```

### Example 4
```ruby
animal = "dog"
loop do |animal|  
    animal = "cat"  
    break
end
puts animal
```




