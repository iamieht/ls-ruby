# 1. Uppercase Check

# 1. Truthiness
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

# 2. Collection methods
```ruby
odd, even = [1, 2, 3].partition do |num|  
    num.odd?
end
p odd 
p even
```

# 3. Variables as Pointers
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

