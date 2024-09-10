# Practice Questions

[Launch School - an online school for Software Engineers](https://launchschool.com/posts/108e5025)

## Open-ended questions


7.  What is the difference between `==` and `===` in Ruby? When would you use each?
11. What is the difference between `puts` and `p` in Ruby? When might you choose one over the other?
12. Explain the concept of short-circuit evaluation in Ruby. How does it apply to the `&&` and `||` operators?
14. Describe the difference between `break` and `next` in Ruby loops. When would you use each
16. Explain the concept of method definition and method invocation. How are they different?
17.  What is the difference between `==` and `equal?` in Ruby? When would you use each?
18. How does Ruby handle variable reassignment within a method? Does it affect the original variable outside the method?
19. Describe the concept of implicit return in Ruby. How does it differ from explicit returns?
20. What is the difference between `Array#select` and `Array#reject`? Provide examples of when you might use each.
21. Explain how default parameters work in Ruby methods. Provide an example.
22. What is the splat operator (`*`) in Ruby? Provide examples of how it can be used in method definitions and method calls.
23. How does Ruby's `case` statement differ from a series of `if/elsif` statements? When might you choose to use a `case` statement?
24. Explain the concept of nested data structures in Ruby. How would you access elements in a nested array or hash?
25. What is the purpose of the `Enumerable` module in Ruby? Name and describe three methods from this module.


## Truthiness

### 1. In Ruby, what values are considered falsy? List all of them.

In Ruby, the only values that are `falsy` are the boolean `false` and `nil` 
### 2. Explain the difference between `false` and `nil` in terms of truthiness.

Both `false` and `nil` are falsy values. But there are some differences:

1. `false` is the Boolean false value, while `nil` is the absence of any value.
2. `false` is an instance of the `FalseClass`, while `nil` is an instance of the `NilClass`.
3. `false` and `nil` are not equal to each other:

```ruby
false == nil # => false
```

4. In terms of logical operations, both `false` and `nil` will behave similarly:

```ruby
false && true #=> false
nil && true #=> nil
```

### 3. How does Ruby's `!!` operator work with regards to truthiness? Provide an example.

The `!!` operator converts a value to its Boolean equivalent based on Ruby's concept of truthiness.

```ruby
!!(5) #=> true
```

The first `!` negates the value, converting truthy values to `false` and falsy values to `true`.
The second `!` negates the result again, converting the original value to either `true` or `false`.

This operation converts any value to its strict boolean equivalent, where only `false` and `nil` become `false`, and all other values become `true`.
### 4. What will the following code output and why?

```ruby
if 0 
	puts "Zero is truthy" 
else 
	puts "Zero is falsy" 
end
```

The code outputs `Zero is truthy`. The conditional expression `if 0` is truthy, so the String object with value `Zero is truthy` gets passed as an argument to the `puts` method invocation, outputting the String to to terminal.
### 5. Explain how the `&&` operator works in Ruby with regards to truthiness and short-circuit evaluation.

**Truthiness:**

In Ruby, all values are considered truthy except for `false` and `nil`. This means that even values like 0, empty strings, and empty arrays are considered truthy when used with `&&`.

**Evaluation**:

The `&&` operator returns the first falsy operand if there is one. If all operands are truthy, it returns the last operand.

**Short-circuit** evaluation:

The `&&` operator stops evaluating as soon as it encounters a falsy value. This is because once a falsy value is found, the entire expression must be false, so there's no need to evaluate the rest.

```ruby
result = true && 5 && "hello" && false && 10 
puts result # Outputs: false
```

In this case, `&&` stops evaluating at `false` and returns it, without evaluating the `10` at the end.

```ruby
result = true && 5 && "hello"
puts result  # Outputs: "hello"
```

This behavior allows for concise conditional checks, such as:

```ruby
user_name = get_user_name()
if user_name && user_name.length > 0
  puts "Hello, #{user_name}!"
else
  puts "Hello, stranger!"
end
```

In this case, if `user_name` is `nil`, the `&&` will short-circuit and not attempt to call `length` on `nil`, avoiding a potential error.
### 6. What is the return value of the following expression and why?

```ruby
 "hello" && 0 && nil
```

The return value is `nil` as is the first falsy value in the expression. The `&&` operator returns the first falsy value if there's one, otherwise returns the last truthy operand in the expression.

### 7. How does Ruby's `if` statement evaluate truthiness differently from the `==` operator?

The `if` statement and the `==` operator in Ruby evaluate truthiness differently:

1. The `if` statement considers any value that is not `false` or `nil` to be truthy. This means that even values like 0, empty strings, and empty arrays are considered truthy in an `if` statement.
2. The `==` operator, on the other hand, checks for equality between two values. It doesn't evaluate truthiness in the same way as the `if` statement. Instead, it compares the actual values or objects to determine if they are equal.

```ruby
if 0
  puts "This will be printed"
end

puts (0 == true)  # This will output false

if "hello"
  puts "This will also be printed"
end

puts ("hello" == true)  # This will output false
```

In these examples, the `if` statements evaluate 0 and "hello" as truthy, so their blocks are executed. However, when using `==`, neither 0 nor "hello" is equal to `true`, so the comparison returns `false`.

### 8. What will the following code output and why?

```ruby
a = "false"

if a
   puts "The string 'false' is truthy"
else
   puts "The string 'false' is falsy"
end
```

This code outputs `The string "false" is truthy`. On line 1, the variable `a`is initialized and references the String object with value `false`. In Ruby any value is truthy except for the Boolean `false` and `nil`, so in the conditional statement, `if a` evaluates as true, so the String object `The string 'false' is truthy` is passed as an argument to the `puts` method invocation, outputting the string to the terminal.


### 9. Explain how the `||` operator works in Ruby with regards to truthiness and short-circuit evaluation.

**Truthiness**:

In Ruby, all values are considered truthy except for `false` and `nil`. This means that even values like 0, empty strings, and empty arrays are considered truthy when used with `||`.

**Evaluation**:

The || operator returns the first truthy operand if there is one. If all operands are falsy, it returns the last operand.

**Short-circuit** evaluation:

The `||` operator stops evaluating as soon as it encounters a truthy value. This is because once a truthy value is found, the entire expression must be true, so there's no need to evaluate the rest.

### 10. What is the difference between `if x = 1` and `if x == 1` in Ruby, and how does it relate to truthiness?

The difference between `if x = 1` and `if x == 1` in Ruby is significant:

1.  `if x = 1`:  
    This is an assignment within a conditional. It assigns the value 1 to x and then evaluates the truthiness of that assignment. In Ruby, assignments return the value assigned, so this will always be truthy (since 1 is truthy in Ruby).
    2.  `if x == 1`:  
    This is a comparison. It checks if the value of x is equal to 1 and returns true if they are equal, or false if they are not.
    
    Regarding truthiness:   
    * In `if x = 1`, the assignment always evaluates as truthy because 1 is considered truthy in Ruby. This condition will always be true, regardless of x's initial value.  
* In `if x == 1`, the truthiness depends on whether x actually equals 1. If x is 1, it evaluates to true; otherwise, it's false.

 It's important to note that using `=` in a conditional is often considered a potential bug or code smell, as it's usually not the intended behavior. Most Ruby style guides recommend using parentheses if you actually intend to do assignment in a conditional, like `if (x = 1)`, to make it clear that the assignment is intentional.

The expression `if x = 1` is an assignment operation that always evaluates a true, while the expression `if x == 1` is a comparison operation that checks for equality and returns the Boolean `true` or the Boolean `false` depending on the value of `x`. So the second expression can produce a truthy or falsy value, depending on the value referenced by variable `x`, while the first expression will always produce a truthy value, as every assignment operation returns the value referenced by the assignment.


## Precedence

### 1. What is the output of the following code and why?

```ruby
puts (5 + 3) * 2 == 16 && !(32 * 4 == 128 || 16 > 0)
```

Answer

```ruby
puts 8 * 2 == 16 && !(true)
puts true && false
puts false
```

The parentheses have the higher order of precedence in Ruby, so it's evaluated first. In that case `(5 + 3)` is evaluated to `8` and `(32 * 4 == 128 || 16 > 0)` is evaluated to `!(true).` The expression `8 * 2` is evaluated to `16` and `!(true)` is evaluated to `false`. Then the comparison `16 == 16` gets evaluated and returns `true` and the last remaining expression is `true && false` that gets evaluated to `false`, which is then passed as an argument to the `puts` method invocation, outputting `false` to the console.
### 2. Explain the order of operations in this expression:

```ruby
result = 10 - 5 * 2 + 15 / 3 ** 2
```

Operands `3` and `2` gets passed to the `**` operator, returning the value `9`. Then the operands `5` and `2` gets passed to the `*` operator, returning the value `10`. The operands `15` and `9` gets passed to the `/` operator, returning the value `1`. Then the rest of the expression is evaluated letf-to-right `10 - 10 + 1` returning the value `1` 
### 3. What is the value of `x` after this code executes? Explain the precedence rules at play.

```ruby
x = 2 
x *= 3 + 4
```

`x = 14`

On line 1, local variable `x` is initialized and references the Integer object with value `2`.
On line 2, the expression `3 + 4` gets evaluated, returning the value `7` and is passed as an argument to the method `*` returning the value 14, which is then reassigned to the local variable `x`.

### 4. Describe the precedence of logical operators in this statement:

```ruby
puts true && false || true && !false
```

`&&` has higher order of precedence than `||`, so the expression is evaluated as follows:

```ruby
puts false || true
puts true
```


### 5.  What will this code output and why?

```ruby
a = 5
b = 10
c = 15
puts a < b && b < c || a > c
```

```ruby
puts true && true || false
puts true
```

Comparison operators have higher precedence than logical operators in Ruby, so first the comparison expressions get evaluated and then the `&&` operator has higher order precedence than `||` operator.

### 6.  Explain how precedence affects the result of this expression:

```ruby
result = 1 + 2 * 3 ** 2 - 4 / 2
```

The `**` operator has higher order of precedence, so the operands `3` and `2` get passed to this operator, returning the value `9`. As operators `*` and `/` have the same precedence the expression gets evaluated left to right, so the operands `2` and `9` get passed to the `*` operator returning the value `18`. Then the operands `4` and `2` get passed to the `/` operator returning the value `2`. The final expression `1 + 18 - 2` is evaluated left to right, returning the value `17`.

### 7.  What is the output of this code? Explain the precedence of method calls and operators.

```ruby
def multiply(a, b)
    a * b
end

puts 5 + multiply(2, 3) ** 2
```

The first step is to have all the operands as values, before Ruby evaluates the operators. So the method invocation `multiply` is evaluated first, returning the value `6`. Then the operands `6` and `2` gets passed to the `**` operator, returning the value `36`. Finally the operands `5` and `36` get passed to the `+` operator returning the value `41`, which is then passed as an argument to the `puts` method invocation, outputting the value to the console.

## Variable Scope

### 1. How does variable scope differ between methods and blocks in Ruby?

In Ruby, methods and blocks have different rules when it comes to variable scope:
1.  Method Scope:  
    •   Methods create their own scope.  
    •   Variables defined inside a method are local to that method and cannot be accessed outside of it.  
    •   Variables defined outside the method are not accessible inside the method unless they are passed as arguments.
    2.  Block Scope:  
    •   Blocks have more flexible scope rules.  
    •   Blocks can access variables that are defined in the outer scope (the surrounding environment where the block is defined).  
    •   Variables defined inside a block are not accessible outside of the block.  
    •   However, blocks can modify variables from the outer scope.

Here's a simple example to illustrate:

```ruby
# Outer scope variable
x = 10

# Method definition
def print_x
  puts x  # This will raise an error because x is not accessible here
end

# Block
[1, 2, 3].each do |i|
  puts x  # This will work and print 10
  y = i   # y is defined within the block
end

puts y  # This will raise an error because y is not accessible here
```

In this example, the block can access and print the outer variable `x`, but the method `print_x` cannot. Also, the variable `y` defined inside the block is not accessible outside of it. This behavior allows blocks to be more flexible and context-aware, while methods maintain stricter encapsulation of their variables.

### 2. Explain how variable initialization in an inner scope affects the outer scope.

Variable initialization in an inner scope generally does not affect the outer scope in Ruby. This concept is part of Ruby's variable scoping rules.

When you initialize a new variable inside an inner scope (such as within a block), it remains local to that scope and doesn't affect variables in the outer scope. This is true even if the variable in the inner scope has the same name as a variable in the outer scope.

Here's an example to illustrate:

```ruby
x = 10  # Outer scope

[1, 2, 3].each do |i|
  x = i  # This creates a new local variable x, shadowing the outer x
end

puts x  # This will still print 10
```

In this case, the `x = i` inside the block creates a new local variable `x` that only exists within the block. It doesn't change the `x` in the outer scope.

However, it's important to note that if you reference a variable from the outer scope within an inner scope without initializing it, you can modify the outer variable:

```ruby
x = 10  # Outer scope

[1, 2, 3].each do |i|
  x = x + i  # This modifies the outer x
end

puts x  # This will print 16
```

In this case, we're not initializing a new `x`, but modifying the existing one from the outer scope.
### 3. How does variable scope work with method definitions in Ruby?

1.  Local variables: Variables defined inside a method are local to that method. They cannot be accessed outside the method.
2.  Parameters: Method parameters act like local variables within the method.
3.  Outer scope variables: Methods cannot directly access variables from the outer scope. If you want to use an outer variable in a method, you need to pass it as an argument.
4.  Return values: To get data out of a method, you need to explicitly return it.
5.  Constants: Unlike local variables, constants defined outside the method are accessible within the method.

Here's an example to illustrate these points:

```ruby
CONSTANT = 10

def my_method(param)
  local_var = 5
  puts param
  puts local_var
  puts CONSTANT
end

outer_var = 20
my_method(outer_var)
# puts local_var  # This would raise an error
```

In this example, `param` and `local_var` are only accessible within the method. `CONSTANT` is accessible because it's a constant. `outer_var` is passed as an argument to make it available inside the method.

Remember, this scoping behavior helps in creating more maintainable and predictable code by preventing unintended variable modifications.

### 4. What happens if you try to access a local variable inside a method that was defined outside the method?

If you try to access a local variable inside a method that was defined outside the method in Ruby, you'll get a NameError. This is because methods in Ruby create their own scope, and they don't have access to local variables defined in the outer scope.

Here's an example to illustrate this:

```ruby
outer_variable = 10

def my_method
  puts outer_variable
end

my_method
```

When you run this code, you'll get an error like this: 

`NameError: undefined local variable or method 'outer_variable' for main:Object`

This error occurs because `my_method` cannot see or access `outer_variable`, even though it's defined before the method.

If you need to use a variable from the outer scope inside a method, you should pass it as an argument:

```ruby
outer_variable = 10

def my_method(variable)
  puts variable
end

my_method(outer_variable)
```

This way, the method can access the value of `outer_variable` through its parameter.

Remember, this scoping behavior is intentional in Ruby. It helps prevent unintended side effects and makes your code more predictable and easier to debug.
### 5.  Can a method modify a local variable that was defined in the outer scope? Why or why not?

In Ruby, a method cannot directly modify a local variable that was defined in the outer scope. This is because methods in Ruby create their own scope, which is separate from the outer scope where the variable was defined.

The reason for this is:

1.  Methods can't access local variables from the outer scope: When a method is called, it creates a new scope that's isolated from the outer scope. It doesn't have direct access to local variables defined outside of it.
2.  Pass-by-reference-value behavior: When you pass a variable to a method, Ruby passes the value of the variable, not the variable itself. If the object is mutable, it can be modified within the method using mutating methods, if the object is immutable, then it cannot be modified.

Here's an example to illustrate this:

```ruby
outer_variable = 10

def modify_variable(var)
  var = 20
end

modify_variable(outer_variable)
puts outer_variable  # This will still print 10
```

In this case, `outer_variable` remains unchanged because the method only modifies its own local copy of the value.

If you need to modify a variable from an outer scope, you would typically return a new value from the method and reassign it to the variable in the outer scope:

```ruby
outer_variable = 10

def modify_variable(var)
  var + 10
end

outer_variable = modify_variable(outer_variable)
puts outer_variable  # This will print 20
```

This behavior helps maintain encapsulation and prevents unintended side effects, making Ruby code more predictable and easier to debug.

Pass-by-reference-value behavior:

```ruby
def modify_array(arr)
  arr.push(4)  # mutating method
end

outer_array = [1, 2, 3]
modify_array(outer_array)
puts outer_array.inspect  # Outputs: [1, 2, 3, 4]
```

In this case, the `outer_array` is indeed modified because `push` is a mutating method.

### 6. How can you make an outer scope variable accessible inside a method?

The method must be defined with a parameter or parameters and the outer scope variable can be passed as an argument, in order to make it available inside the method,

### 7. What is the scope of a method parameter? Can it be accessed outside the method?

The scope of a method parameter in Ruby is limited to the method itself. Method parameters act as local variables within the method and cannot be accessed outside of it.

```ruby
def greet(name)
  puts "Hello, #{name}!"
end

greet("Alice")
puts name  # This will raise a NameError
```

In this code, `name` is a parameter of the `greet` method. It can be used within the method, but trying to access it outside the method (as in the last line) will result in a NameError because `name` is not defined in that scope.

Method parameters are created when the method is called and destroyed when the method execution is complete. This encapsulation helps maintain clean and predictable code by preventing unintended interactions between different parts of your program.

### 8.  If you define a local variable inside a method, can you access it after the method has finished executing?

No, you cannot access a local variable defined inside a method after the method has finished executing. In Ruby, local variables defined within a method have a scope that is limited to that method. Once the method execution is complete, these local variables are destroyed and are no longer accessible.

When a method returns a value, including a local variable, what's actually being returned is the value of that variable, not the variable itself.

### 10. What happens if you have a local variable with the same name in the outer scope and as a parameter in a method?

### 11. How does variable scope differ between method definitions and method invocations with blocks?

### 12. Can you explain what variable shadowing is and provide an example in the context of method definitions?

### 13. What happens to local variables defined within a block inside a method after the block finishes executing?

### 14. How can you return a local variable from a method to make it accessible in the outer scope?

### 15. How does variable scope differ between method definitions and blocks?

### 16. Can a block access variables defined in its outer scope? If yes, provide an example.

### 17. What happens when you initialize a variable inside a block? Can you access it outside the block?

### 18. Explain the concept of variable shadowing in the context of blocks. When might this occur?

### 19. How do nested blocks handle variable scope? Can an inner block access variables from an outer block?

### 20. What happens to a variable's value if it's modified inside a block?

### 21. Do peer blocks (blocks at the same level) share scope with each other? Explain with an example.

### 22. How does variable scope work when using block parameters that have the same name as outer scope variables?

### 23. Can you initialize a variable in an inner block and access it in an outer block? Why or why not?

### 24. What's the difference in variable scope between using `each` and `loop` to create a block?

### 25. How does variable scope work with methods that take blocks as arguments?

### 26. What happens if you try to use a variable before it's initialized within a block?

## Variable Shadowing

### 1. What is variable shadowing in Ruby?

### 2. In what situations does variable shadowing occur?

### 3. How does variable shadowing affect the accessibility of outer scope variables within a block?

### 4. Write a code snippet that demonstrates variable shadowing using the `each` method.

### 5. How can you avoid variable shadowing when writing Ruby code?

### 6. What's the difference between variable shadowing and variable reassignment?

### 7. How does variable shadowing impact debugging and code readability?

### 8. Write a code snippet that shows how to access an outer scope variable inside a block where variable shadowing occurs.

### 9. Can variable shadowing occur with method parameters? Why or why not?

### 10. How does understanding variable shadowing contribute to writing more maintainable Ruby code?


## Scope of Constants

### 1. How does the scope of constants differ from the scope of local variables in Ruby?

### 2. Can a constant defined inside a method be accessed outside of that method? Why or why not?

### 3. What happens if you try to reassign a value to a constant in Ruby?

### 4. How can you access a constant defined in an outer scope from within a method?

### 5. What is the convention for naming constants in Ruby, and why is it important?

### 6. Can you define a constant inside a block? What are the implications of doing so?

### 7. How does the scope of constants behave within classes and modules?

### 8. What is meant by the term "lexical scope" in relation to constants in Ruby?

### 9. Is it possible to have constants with the same name in different scopes? How does Ruby handle this?

### 10. How does constant lookup work in Ruby when you reference a constant?


## Mutating values vs. Reassignment of Variables

### 1. What's the difference between `str = str + "!"` and `str << "!"`? How do they affect the original object?

### 2. Given `a = [1, 2, 3]` and `b = a`, what will `b` be after `a = [4, 5, 6]`? Why?

### 3. How does the `<<` method differ from the `+` method when used with arrays?

### 4. If `x = "hello"` and `y = x`, what will `y` be after `x.upcase!`? What about after `x = x.upcase`?

### 5. What's the difference between `arr.map` and `arr.map!` in terms of mutation?

### 6. Given `num = 5`, can you mutate `num`? Why or why not?

### 7. How can you check if a method mutates its caller or returns a new object?

### 8. What will be the output of the following code and why?

```ruby
a = [1, 2, 3]
b = a
a[1] = 4
puts b
```


### 9. Explain the concept of variables as pointers. How does this relate to mutation and reassignment?

### 10. What's the difference between `+=` and `<<` when used with strings?


## Pass-by-reference / Pass-by-value

### 1. What types of objects in Ruby are typically passed by value?

### 2. When a method mutates its argument, is this more closely associated with pass by value or pass by reference?

### 3. If you pass an array to a method and the method modifies the array, will the original array be changed outside the method? Why or why not?

### 4. What happens when you reassign a variable inside a method? Does it affect the original object passed to the method?

### 5. How can you determine if two variables are pointing to the same object in Ruby?

### 6. What's the difference between the following two code snippets in terms of their effect on the original array?

```ruby
def add_to_array(arr)
    arr << 4
end

def add_to_array(arr)
    arr + [4]
end
```

### 7. Why is it important to know which methods in Ruby mutate the caller and which don't?

### 8. What will be the output of the following code and why?

```ruby
def change_name(name)
    name = "bob"
end

name = "jim"
change_name(name)
puts name
```

### 9. How does variable scope relate to the concepts of pass by reference and pass by value?

### 10. Can you explain why Ruby is sometimes described as "pass by reference value" rather than strictly pass by value or pass by reference?


## Methods

### 1. What is the difference between `puts` and `return` in Ruby methods?

### 2. How do you define a method that takes arguments in Ruby?

### 3. Explain the concept of method chaining in Ruby. Can you provide a simple example?

### 4. What is the purpose of the `each` method in Ruby? How is it commonly used?

### 5. How does the `map` method differ from the `each` method?

### 6. What does the `select` method do in Ruby? How might you use it?

### 7. Explain how the `times` method works in Ruby. When would you use it?

### 8. What is the difference between `!` and `?` at the end of method names in Ruby?

### 9. How does the `split` method work on strings? What does it return?

### 10. What is the purpose of the `join` method? How might you use it with an array?

### 11. What is a block in Ruby? How is it different from a method?

### 12. How do you pass a block to a method in Ruby? What are the two syntaxes for doing this?

### 13. What is the purpose of the `yield` keyword in Ruby methods?

### 14. How can you check if a block was given to a method?

### 15. What is the difference between `each` and `map` when used with blocks?

### 16. How does the `select` method work with blocks? What does it return?

### 17. How can you pass arguments to a block? Can you give an example?

### 18. What is the difference between `{...}` and `do...end` when defining blocks?

### 19. How does the `sort` method use blocks to determine the order of elements?

### 20. What is the difference between a mutating and a non-mutating method in Ruby?

### 21. How can you determine if a method is mutating or non-mutating?

### 22. What does the `<<` operator do to an array? Is it mutating or non-mutating?

### 23. Is the `+` method for arrays mutating or non-mutating? How about for strings?

### 24. What's the difference between `Array#map` and `Array#map!`?

### 25. How does `String#upcase` differ from `String#upcase!`?

### 26. Is `Array#sort` a mutating method? What about `Array#sort!`?

### 27. What happens to the original array when you use `Array#select`? Is it mutated?

### 28. How does assignment (=) interact with mutation? Is it a mutating operation?

### 29. What's the difference between `Array#push` and `Array#+`? Which one is mutating?

### 30. How does `String#gsub` differ from `String#gsub!`?

### 31. When working with hashes, is the `Hash#merge` method mutating or non-mutating?















