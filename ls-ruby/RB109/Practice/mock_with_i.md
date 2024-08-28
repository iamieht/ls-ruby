# Q1.

Examine the code below. Explain what is happening here and identify the underlying principle that this demonstrates.

```ruby
def reversed_number(num)
	return num.to_s.reverse.to_i
end

puts reversed_number(12345)
```


on line 5, the `reversed_number` method is called by passing in integer `12345` as an argument and the returned value of this method invocation is passed as an argument to `puts` method. The output is `54321` and return value is `nil`.
This is because, on line 1 to 3 where method `reversed_number` is defined and takes in parameter  `num`. Since the method was invoked with `12345` as an argument, the parameter `num` references the integer value. On line 2, the explicit `return` keyword is invoked to explicitly return the method invocation of  `to_s.reverse.to_i` on to the calling object `num`. This results in `54321`.
This code demonstrate the calling of method on to calling object. The explicit return of method, method definition and invocation, use of return value to method.

**Notes from Ivan**

- On line 2, you missed to explain the chained methods: The `to_s` method is called on the value `12345` referenced by the method local variable `num`, returning the strong object `12345` . The method `reverse` is called on the string `12345` and it returns the a new string object with the characters reversed `54321`. At last the `to_i` method is called on the string `54321`, which returns the integer object with value `54321`.
***

# Q2.

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

the return value is `nil`

**Notes from Ivan**

* You should explain why `nil` is returned, even though the question does not explicitly ask for it. But I believe is the way the TA's will know that you master the topic
***

# Q3.

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

On line 1, local variable `a` is initialized to the integer `4`. On line 2, local variable `b` is initialized to the integer `2`. On line 4 to 8, a `loop` method is called and passed in a block `do..end`. Within, the block on line 5, a local variable `c` is initialized to integer `3`. On line 6, `a` is reassigned to referene the value `3`, referenced by `c`. On line 7, an `break` command terminates the loop. On line 10, `puts` method is called and passed in the value referenced by `a`, in which case the value referenced is `3` which is output. `nil` is returned because of the `puts` method.
On line 11, `puts` method is invoked and passed in the value referenced by `b`, which is integer `2`, that is output to the console and `nil` returned.
This code demonstrate, local variables in relation to blocks, specifically, the variables scoping rules in blocks.

**Notes from Ivan**

*  On line 4 to 8, a `loop` method is called and passed in a block `do..end`. (as an argument)


***

# Q4.
if the code is:
```ruby
a = 5.2
b = 7.3
a = b
b += 1.1

p a
p b
```
On line 6, the invocation of `p` method and passing of the values referenced by `a` will output `7.3` and return `7.3`. Initially, `a` is initialized to integer `5.2` on line 1. Then, on line 2, `b` is initialized to integer `7.3`. on line 3, `a` is reassigned to initialize the value referenced by `b`, `7.3`. On line 4, a new variable `b` is initialized to the return value of `b + 1.1` by this code ; `b += 1.1` which is the same as `b = b + 1.1`. As such when, `p` method is called on line 7, `8.4` is output and returned.
This concept demonstrate variables as pointers, reassignment of local variable and creation of new variables.

**Notes from Ivan**

* You should describe the code following the execution path. Here you started on line 6, but the execution path starts on line 1.

***

# Q5

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
def increment(x)   
	x << 'b' 
end 

y = 'a' 

increment(y) 
puts y
```

On line 5, a local variable is initialized to the string `'a'`. On line 6, the method `increment` is invoked with the value assigned to `y` passed as an argument. The method `increment` is defined on lines 1 to 3 and takes a paramter `x`. Since the method was invoked with `y` as an argument, the paramter `x`references the value assigned to `y` which is string `'a'`. On line 2, `<<` method is invoked to append `'b'` passed as a string argument to the calling object `x`. On line 8, when the `puts` method is invoked with the value referenced by `y` as an argument, it results in `ab`.
This is because of mutating method, `<<` called on to values referenced by the local variables. This concept demonstrate pass by reference, variable as pointers and mutating methods.

**Notes from Ivan**

* On line 5, a local variable is initialized to the string `'a'`. You missed the variable name.
* On line 6, the method `increment` is invoked with the value assigned to `y` passed as an argument. I would say the value referenced by `y` instead of assigned to.
* On line 2: I would write: The `#<<` is called on the value `a` referenced by method local variable `x` and gets passed the string object with value `b` as an argument, mutating the argument and implicitly returning the string object `ab`.
***

# Q6.

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

On line 6, `s` is initialized to string object `'hello'`. On line 7, the `fix` method is called and passed in the value referenced by `s`. The return value is then assigned to `t`. On line 1 to 4, `fix` method is defined and takes a paramter `value`. Since the method was invoked with `s` as an argument, the parameter `value` references the value assigned to `s`, which is string object `'hello'`. On line 2, `upcase` method is called on to calling object `value` and the result is assigned to new variable `value`. Here the return is `HELLO`
On line 3, `concat` method is called and passed in a string object `'!'` as an argument to the calling object `value`. Here the return is `HELLO!`.
If last line, line 7 is called, the return value of the  method is `HELLO!` As described on line 7. However, the value of `s` would be `hello` outside the method definition

**Notes from Ivan**

* I would explicitly write local variable `s` instead of only `s`.
* The statement Here the return is `HELLO` could be confusing, as it seems that the method is returning that value, but is not. Maybe something like: On line 2, `upcase` method is called on the value `hello` referenced by the method local variable `value` returning the string object with value `HELLO`reassigning it to the variable `value`.
***
# Q7.

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

On line 7, the invocation of `puts` method and passing in of the value referenced by `a` outputs `4`, because the top level `a` on line 1, is never accessed within the the `times` block on line 2 to 5. This is because, the block variable `a` blocks access to that of the other variable due to variable shadowing.
Such that when each iteration occurs, which is set to be `22.times`, the variable `a` is immediately assigned to `5` and the current count is ignored on line 3. The `puts` method is called to refernce the value referenced by `a`, `5`. The return value of the `times` method returns `22` which it was called on, so when `puts` method is called on line 8 by passing in vale referenced by `b` it output `22` and returns `nil`.

**Notes from Ivan**

* The first line evaluated is line 1, but you started on line 7.

***

# Q8

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


On line 11, `center_of` method is called and passed in a string object `'Launchschool'` as an argument.
The return value of this method invocation is then passed as an argument to the calling of the `puts` method. On line 1 to 9, a method `center_of` is definined and take in parameter `str`. When method is invoked as described on line 11, the `'Launchschool'` binds to `str`,within the method definition, on Line 2, `size` method is called on the calling object `str`, the return value is then stored in to a variable `length`.
A conditional statement, `if..else` is created to evaluated the truthiness of `length` by calling the `odd?` method to it from line 4 to 8. `if` the `length.odd?` is odd, the middle character of the string is is explicitly returned `return` by means of evaluating with `str[length / 2]` on line 5. `else` if the `length` is even, then an explicit return value of `return str[length / 2 - 1, 2]` is evaluated.

The length of `'Launchschool'` is `12`, therefore it is evaluated based on `str[length / 2]`, resulting on the return of `hs`, that is then passed as an argument to `puts` on line 12, to output `hs` to the console and return `nil`

The code demonstrate method definition and method invocation, conditional statement and the use of method return values.
***
# Q9

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
def negative(number)
	number <= 0 ? number : number * -1
end

puts negative(5) == -5
puts negative(-3) == -3
```

On line 5, `negative` method is invoked and passed in an integer `5` as an argument. The return value of this method invocation is then passed as an argument to the calling of `puts` method. On line 1 to 3, a method definition `negative` is defined and takes parameter`number`. When method `negative` is invoked as described on line 5, `5` bind to `number`, which now it references local to the method definition. Within the method definition, a ternary conditional statement `number <= 0 ? number : number * -1` is evaluated on line 2. The operators `<=` are used to evaluate the `number` to integer `0`. If the `number` is less than or equal to `0`, `number` is printed else `number` is multiplied by `-1`. The output of method invocation on line 5 is therefore not less than 0, therefore `5` is multiplied by `-1`. `-5` is output to the console and `nil` is returned as a result of the `puts` method.
On line 6, `-3` is passed as an argument to the calling of the `negative` method. Using the code evaluation in the method definition, `-3` is less than `0` therefore `-3`(return value) is passed to `puts` method on line 6, `-3` is printed and `nil` is returned.

The code demonstrate method definition and method invocation, conditional statement and the use of method return values.

***
# Q10

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

On line 5, `test` method is invoked without any arguments, and the return value is stored in local variable `var`. On line 1 to 3, a method `test` is defined without a parameter. The code within the method definition to be executed is the calling of the `puts` method and passing in string object `"written assessment"`, such that when the `test` method is invoked, `written assessment` assessment is output and `nil` is returned as a result of `puts` method. The return value, `nil` is stored on to the local variable, `var` as indicated on line 5.
On line 8 to 12, an `if..else` statement is created that evaluates the truthiness of `var`; which is `nil`. `nil` evaluate to false, and because of this `interview` is output to the console. Because of the `puts` method called and passed on line 11, the return is `nil` and output is `written`

This code demonstrate, the use of method return values in Ruby, method definition and method invocation, and truthiness in Ruby.
