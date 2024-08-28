# Mock Exam (1)

## Question 1

Examine the code below. Explain what is happening here and identify the underlying principle that this demonstrates.

```ruby
def reversed_number(num)
	return num.to_s.reverse.to_i
end

puts reversed_number(12345)
```


## Question 2

What would be the return value of the following method invocation?

```ruby
def foo(param = "no")
	"yes"
end

def bar(param = "no")
	param == "no" ? "yes" : "no"
end

puts bar(foo)
```


## Question 3

What does the following code return? What does it output? Why? What concept does it demonstrate?

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


## Question 4

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
a = 5.2 
b = 7.3 
a = b 
b += 1.1
```

What is `a` and `b`? Why?


## Question 5

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
def increment(x)   
	x << 'b' 
end 

y = 'a' 

increment(y) 
puts y
```


## Question 6

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
def fix(value)  
	value = value.upcase  
	value.concat('!')
end

s = 'hello'
t = fix(s)
```

What values do `s` and `t` have? Why?


## Question 7

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
a = 4 
b = 22.times do |a|  
	a = 5  
	puts a
end

puts a
puts b
```


## Question 8

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
def center_of(str)
	length = str.size

  if length.odd?
	return str[length / 2]
  else
	return str[length / 2 - 1, 2]
	end
end

puts center_of('Launchschool') == 'hs'
```


## Question 9

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
def negative(number)
	number <= 0 ? number : number * -1
end

puts negative(5) == -5
puts negative(-3) == -3
```


## Question 10

What does the following code return? What does it output? Why? What concept does it demonstrate?

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
