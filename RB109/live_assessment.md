# 1. Uppercase Check

# Truthiness
## 1 
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
# Collection methods
## 1 
```ruby
odd, even = [1, 2, 3].partition do |num|  
    num.odd?
end
p odd 
p even
```
# Variables as Pointers
## 1 
```ruby
a = 4
b = a
a = 7
puts a
puts b
```

a. What concept is demonstrated here?
b. What is the output of `puts b` and `puts a`? Why?
c. On line 1 and 2, are `a` and `b` referencing the same object in memory? Why? 

## 2
```ruby
a = "forty two"
b = "forty two"
c = a
```
a. What are `a`, `b` and `c`? Why?

## 3
```ruby
a = 42
b = 42
c = a
```

a. What are `a`, `b` and `c`? Why?

## 4
```ruby
x = 'a'
y = 'b'
z = [x, y]
y = 2
p z
```
a. What is the output? Why?


# 4. Variable Scope and Method Definitions
```ruby
hello = 'hi'

def hello
	"Saying hello!"
end

puts hello
```

a. Why the output of this code is `hi` and not `Saying Hello`?
b. Without changing the local variables name, what can be done to output `Saying Hello` instead? 

# 4.1
```ruby
def amethod(param)
	param += " universe"
	param << " world"
end

str = "hello"
amethod(str)

p str
```
a. What is the output of this code? Why?
b. What would be the output if line `param += " universe"` is removed? Why?
c. What concepts are demonstrated in both cases?

