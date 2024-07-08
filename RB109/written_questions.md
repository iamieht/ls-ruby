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

### Example 3 (Clarify with TA)
```ruby
n = 101.times do |n|  
    n = 11
end
puts n
```
they are demonstrating that the top level/main `n` variable is never accessed within the `times` block because the block variable `n` blocks access to that outer variable, due to variable shadowing.
So during each iteration, when `n` is assigned to `11`, that is only affecting the block variable `n`, not the top level/main `n` variable. As you said, the top level/main `n` is initialized and assigned the return value of the `times` method after its block execution is completed.

### Example 4
```ruby
animal = "dog"
loop do |animal|  
    animal = "cat"  
    break
end
puts animal
```

## Object Passing/Variables As Pointers

### Example 1

```ruby
a = "hi there"
b = a
a = "not here"
```

### Example 2
```ruby
a = "hi there"
b = a
a << ", Bob"
```

### Example 3
```ruby
a = [1, 2, 3, 3]
b = a
c = a.uniq
```
What if the last line was `c = a.uniq!`?

### Example 4
```ruby
def test(b)
  b.map { |letter| "I like the letter: #{letter}" }
end

a = ['a', 'b', 'c']

test(a)
```
What if we called `map!` instead of `map`?

### Example 5
```ruby
a = 5.2
b = 7.3
a = b
b += 1.1
```
What is `a` and `b`? Why?

### Example 6
```ruby
def test(str)
  str  += '!'
  str.downcase!
end

test_str = 'Written Assessment'
test(test_str)

puts test_str
```

### Example 7
```ruby
def plus(x, y)
  x = x + y
end

a = 3
b = plus(a, 2)

puts a
puts b
```

### Example 8
```ruby
def increment(x)
  x << 'b'
end

y = 'a'

increment(y) 
puts y
```

### Example 9
```ruby
def change_name(name)  
    name = 'bob'      # does this reassignment change the object outside the method?
end

name = 'jim'
change_name(name)
puts name
```

### Example 10
```ruby
def cap(str)  
    str.capitalize!   # does this affect the object outside the method?
end

name = "jim"
cap(name)
puts name
```

### Example 11
```ruby
a = [1, 3]
b = [2]
arr = [a, b]
arra[1] = 5
arr
```
What is `arr`? Why?

### Example 12

```ruby
arr1 = ["a", "b", "c"]
arr2 = arr1.dup
arr2.map! do |char|  
    char.upcase
end
puts arr1 
puts arr2
```

## Object Mutability/Mutating Methods

### Example 1
```ruby
def fix(value)  
    value.upcase!  
    value.concat('!')  
    value
end

s = 'hello'
t = fix(s)
```
What values do `s` and `t` have? Why?

### Example 2
```ruby
def fix(value)  
    value = value.upcase  
    value.concat('!')
end

s = 'hello'
t = fix(s)
```
What values do `s` and `t` have? Why?

### Example 3
```ruby
def fix(value)  
    value << 'xyz'  
    value = value.upcase  
    value.concat('!')
end

s = 'hello'
t = fix(s)
```
What values do `s` and `t` have? Why?

### Example 4
```ruby
def fix(value)  
    value = value.upcase!  
    value.concat('!')
end
s = 'hello'
t = fix(s)
```
What values do `s` and `t` have? Why?

### Example 5
```ruby
def fix(value) 
    value[1] = 'x' 
    value 
end

s = 'abc'
t = fix(s)
```
What values do `s` and `t` have? Why?

### Example 6
```ruby
def a_method(string)  
    string << ' world'
end

a = 'hello'
a_method(a)
p a
```

### Example 7
```ruby
num = 3
num = 2 * num
```

### Example 8
```ruby
a = %w(a b c)
a[1] = '-'
p a
```

### Example 9
```ruby
def add_name(arr, name)  
    arr = arr + [name]
end

names = ['bob', 'kim']
add_name(names, 'jim')
puts names
```

### Example 10
```ruby
def add_name(arr, name)  
    arr = arr << name
end

names = ['bob', 'kim']
add_name(names, 'jim')
puts names
```

## Each, Map, Select

### Example 1
```ruby
array = [1, 2, 3, 4, 5]
array.select do |num|   
    puts num if num.odd?
end
```

### Example 2
```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.select { |n| n.odd? }
```

### Example 3
```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
new_array = arr.select do |n|   
    n + 1
end
p new_array
```

### Example 4
```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
new_array = arr.select do |n|   
    n + 1  
    puts n
end
p new_array
```

### Example 5
```ruby
words = %w(jump trip laugh run talk)
new_array = words.map do |word|  
    word.start_with?("t")
end
p new_array
```

### Example 6

```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each { |n| puts n }
```

### Example 7
```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
incremented = arr.map do |n|             
    n + 1
end
p incremented
```

### Example 8
```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
new_array = arr.map do |n|   
    n > 1
end
p new_array
```

### Example 9
```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
new_array = arr.map do |n|   
    n > 1  puts n
end
p new_array
```

### Example 10
```ruby
a = "hello"
[1, 2, 3].map { |num| a }
```

### Example 11
```ruby
[1, 2, 3].each do |num|  
    puts num
end
```

## Other Collection Methods

### Example 1
```ruby
[1, 2, 3].any? do |num|  
    num > 2
end
```

### Example 2
```ruby
{ a: "ant", b: "bear", c: "cat" }.any? do |key, value|  
    value.size > 4
end
```

### Example 3
```ruby
[1, 2, 3].all? do |num|  
    num > 2
end
```

### Example 4
```ruby
{ a: "ant", b: "bear", c: "cat" }.all? do |key, value|  
    value.length >= 3
end
```

### Example 5
```ruby
[1, 2, 3].each_with_index do |num, index|  
    puts "The index of #{num} is #{index}."
end
```

### Example 6
```ruby
{ a: "ant", b: "bear", c: "cat" }.each_with_object([]) do |pair, array|  
    array << pair.last
end
```

### Example 7
```ruby
{ a: "ant", b: "bear", c: "cat" }.each_with_object({}) do |(key, value), hash|  
    hash[value] = key
end
```

### Example 8
```ruby
odd, even = [1, 2, 3].partition do |num|  
    num.odd?
end
p odd 
p even
```

## Truthiness

### Example 1
```ruby
a = "Hello"
if a  
    puts "Hello is truthy"
else  
    puts "Hello is falsey"
end
```

### Example 2
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







