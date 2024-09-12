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

### 9. What happens if you have a local variable with the same name in the outer scope and as a parameter in a method?

When you have a local variable with the same name in the outer scope and as a parameter in a method, Ruby treats them as separate variables.

```ruby
x = 10  # Outer scope variable

def print_x(x)
  puts x  # This will print the value of the parameter x, not the outer x
end

print_x(5)  # This will print 5, not 10
puts x      # This will print 10, the outer x is unchanged
```

### 10. How does variable scope differ between method definitions and method invocations with blocks?

The variable scope differs significantly between method definitions and method invocations with blocks in Ruby:

1.  Method Definitions:  
    •   Create their own scope  
    •   Cannot access local variables from the outer scope  
    •   Parameters act as local variables within the method  
    •   Local variables defined inside the method are not accessible outside
    2.  Method Invocations with Blocks:  
    •   Can access and modify variables from the outer scope  
    •   Local variables created inside the block are not accessible outside the block  
    •   Block parameters are scoped only to the block

### 11. What happens to local variables defined within a block inside a method after the block finishes executing?

Local variables defined within a block inside a method are destroyed after the block finishes executing. They have a scope limited to the block itself and are not accessible outside of it, even within the same method.

```ruby
def some_method
  [1, 2, 3].each do |i|
    block_var = i * 2
    puts block_var
  end
  
  # Trying to access block_var here would raise an error
end

some_method
```

In this example, `block_var` is only accessible within the `each` block. Once the block finishes executing, `block_var` is no longer available, even though we're still inside `some_method`.

### 12. How can you return a local variable from a method to make it accessible in the outer scope?

Implicit return: last evaluated expression in the method or
Explicit return: using the return method

### 13. Can a block access variables defined in its outer scope? 

Yes it can. Blocks can access and modify variables initialized in the outer scope but not vice versa.

### 14. How do nested blocks handle variable scope? Can an inner block access variables from an outer block?

Nested blocks in Ruby handle variable scope in an interesting way. Yes, an inner block can access variables from an outer block. This is because blocks in Ruby create a new scope that can see variables from the surrounding scope.

Here's how it works:

1.  Variables defined in an outer block are accessible in inner blocks.  
2.  Variables defined in an inner block are not accessible in the outer block.  
3.  Each nested block can access variables from all its parent blocks.

```ruby
outer_var = 1

1.times do  # outer block
  middle_var = 2
  
  1.times do  # inner block
    inner_var = 3
    puts "Inner block can access: #{outer_var}, #{middle_var}, #{inner_var}"
  end
  
  puts "Middle block can access: #{outer_var}, #{middle_var}"
  # puts inner_var  # This would raise an error
end

puts "Outer scope can access: #{outer_var}"
# puts middle_var  # This would raise an error
```

### 15. What happens to a variable's value if it's modified inside a block?

When a variable's value is modified inside a block in Ruby, the change persists outside the block as well. This is because blocks in Ruby can access and modify variables from the outer scope.

```ruby
x = 5

[1, 2, 3].each do |i|
  x = x + i
end

puts x  # This will output 11
```

In this case, `x` is modified inside the block, and its value changes from 5 to 11 (5 + 1 + 2 + 3).

This behavior applies to variables that are already defined in the outer scope. If you initialize a new variable inside the block, it won't be accessible outside the block.

### 16. Do peer blocks (blocks at the same level) share scope with each other?

Peer blocks in Ruby do not share scope with each other. Each block creates its own scope, and variables defined within one block are not accessible from another block at the same level.

```ruby
[1, 2, 3].each do |i|
  a = i * 2
  puts "First block: #{a}"
end

[4, 5, 6].each do |i|
  puts "Second block: #{a}"  # This would raise an error
  b = i * 3
end

puts a  # This would also raise an error
puts b  # This would also raise an error
```

### 17. What's the difference in variable scope between using `each` and `loop` to create a block?

Both `each` and `loop` in Ruby create their own block scope. Variables initialized inside either of these blocks are not accessible outside the block after execution.

```ruby
# Using each
array = [1, 2, 3]
array.each do |i|
  x = i * 2
end
# puts x  # This would raise a NameError

# Using loop
counter = 0
loop do
  y = counter * 2
  counter += 1
  break if counter >= 3
end
# puts y  # This would also raise a NameError
```

### 18. How does variable scope work with methods that take blocks as arguments?

When methods take blocks as arguments in Ruby, the variable scope works as follows:
1.  The block can access variables from the outer scope where it's defined.  
2.  Variables defined inside the block are not accessible outside the block.  
3.  The method itself cannot directly access variables defined in the block.

```ruby
x = 10

def method_with_block
  yield
end

method_with_block do
  puts x  # This can access x from the outer scope
  y = 20  # This is only accessible within the block
end

# puts y  # This would raise an error
```

In this case, the block can access `x` from the outer scope, but `y` is only accessible within the block. The method `method_with_block` can't directly access either `x` or `y`.
### 19. What happens if you try to use a variable before it's initialized within a block?

If you try to use a variable before it's initialized within a block in Ruby, you'll get a `NameError`. This is because Ruby evaluates code within blocks from top to bottom, and variables need to be defined before they can be used.

```ruby
[1, 2, 3].each do |i|
  puts x  # This will raise a NameError
  x = i * 2
end
```

## Variable Shadowing

### 1. Does variable shadowing exist in the context of method definitions?

No. Method parameters, create a new local variable scope and don't interact with outer scope variables in the same way blocks do.

### 2. In what situations does variable shadowing occur?

Variable shadowing occurs in Ruby when a block parameter has the same name as a local variable that's defined outside the block. This creates a situation where the block parameter "shadows" or hides the outer local variable within the block's scope.

```ruby
n = 10

[1, 2, 3].each do |n|
  puts n  # This will print 1, 2, 3, not 10
end

puts n  # This will print 10
```

In this case, the block parameter `n` shadows the outer local variable `n` inside the block. This means that within the block, any reference to `n` refers to the block parameter, not the outer variable.

### 3. How does variable shadowing affect the accessibility of outer scope variables within a block?

The block parameter shadows or hides the outer local variable within the scope's block.

### 4. How can you avoid variable shadowing when writing Ruby code?

Have a different name for the block parameter than the local variable in the outer scope.

### 5. Write a code snippet that shows how to access an outer scope variable inside a block where variable shadowing occurs.

```ruby
n = 10

[1, 2, 3].each do |n|
  puts n         # This will print the block parameter (1, 2, 3)
  puts local_variables  # This will show both 'n' variables
  puts binding.local_variable_get(:n)  # This will print the outer 'n' (10)
end

puts n  # This will print 10 (the outer n)
```

In this example, we use `binding.local_variable_get(:n)` to access the outer scope variable `n` inside the block, even though it's shadowed by the block parameter of the same name. This method allows us to explicitly retrieve the value of the outer `n`, which is 10.

## Scope of Constants

### 1. How does the scope of constants differ from the scope of local variables in Ruby?

1.  Lexical Scope: Constants have lexical scope, meaning they are available within the context where they are defined and in inner scopes. Local variables, on the other hand, are limited to their immediate scope.
2.  Visibility: Constants defined at the top level are globally accessible, while local variables are only accessible within their defined scope.
3.  Nesting: Constants can be nested within classes and modules, creating a constant lookup path. Local variables don't have this nesting behavior.
4.  Inheritance: Constants are inherited in class hierarchies, while local variables are not.
5.  Reassignment: While constants can be reassigned (with a warning), it's generally discouraged. Local variables can be freely reassigned.
6.  Block Scope: Unlike local variables, constants are not affected by block scope. They remain accessible across block boundaries.


### 2. Can a constant defined inside a method be accessed outside of that method? Why or why not?

No. Constants are expected to be defined at the class or module level, or in the top-level scope. When you try to define a constant inside a method, Ruby sees this as an attempt to create or modify a constant during program execution, which goes against the intended use of constants.

### 3. What happens if you try to reassign a value to a constant in Ruby?

If you try to reassign a value to a constant in Ruby, the interpreter will allow it but will issue a warning. Here's what happens:
1.  The reassignment will be successful, and the constant will take on the new value.  
2.  Ruby will generate a warning message to indicate that you're redefining a constant.
### 4. How can you access a constant defined in an outer scope from within a method?

To access a constant defined in an outer scope from within a method in Ruby, you can simply use the constant's name directly. Constants have lexical scope, which means they are accessible within the context where they are defined and in inner scopes, including methods.

### 5. Can you define a constant inside a block? What are the implications of doing so?

Yes you can, but Ruby's interpreter will raise a warning about dynamic constant assignment due to the constant being already initialized in a previous step.

### 6. How does constant lookup work in Ruby when you reference a constant?

Constant lookup in Ruby works through a process called constant resolution. When you reference a constant, Ruby searches for it in the following order:
1.  Lexical scope: Ruby first looks in the current scope where the constant is referenced, then moves outward to enclosing modules or classes.
2.  Inheritance chain: If the constant isn't found in the lexical scope, Ruby looks up the inheritance hierarchy, starting from the current class and moving up to its superclasses.
3.  Top-level scope: If the constant is still not found, Ruby checks the top-level (global) scope.
4.  Object: As a last resort, Ruby checks if the constant is defined on the Object class.If the constant is not found in any of these places, Ruby will raise a NameError.


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

In Ruby, immutable objects are typically passed by value. The most common examples of these are:
1.  Numbers (integers and floats)  
2.  Booleans (true and false)  
3.  Symbols  
4.  nil
When these types of objects are passed to a method, Ruby creates a copy of the object's value. This means that any modifications made to the parameter inside the method won't affect the original object outside the method.

It's important to note, however, that while we often say these are "passed by value," Ruby actually uses a mechanism called "pass by reference of the value" or "pass by object reference." This means that variables hold references to objects, and it's these references that are passed to methods. For immutable objects, this behaves effectively like pass by value because the object itself cannot be modified.

### 2. When a method mutates its argument, is this more closely associated with pass by value or pass by reference?

When a method mutates its argument, this behavior is more closely associated with pass by reference.In pass by reference, the method receives a reference to the original object, allowing it to directly modify the object. This is why mutations to the argument inside the method affect the original object outside the method.

For example, in Ruby:

```ruby
def add_exclamation(str)
  str << "!"
end

greeting = "Hello"
add_exclamation(greeting)
puts greeting  # Outputs: "Hello!"
```

In this case, the `<<` method mutates the original string object. This behavior is characteristic of pass by reference, where changes to the parameter inside the method are reflected in the original object.

It's important to note that in Ruby, while we often use terms like "pass by reference" and "pass by value," the language actually uses a mechanism called "pass by reference of the value" or "pass by object reference." This nuance becomes important when working with different data types and understanding how methods interact with their arguments.

### 3. If you pass an array to a method and the method modifies the array, will the original array be changed outside the method? Why or why not?

Yes, if you pass an array to a method and the method modifies the array, the original array will be changed outside the method. This is because arrays in Ruby are mutable objects and are passed by reference.

When you pass an array to a method, Ruby passes a reference to the original array object. This means that the method receives a reference to the same array that exists outside the method. Any modifications made to the array inside the method will affect the original array.

Here's an example to illustrate this:

```ruby
def add_element(arr)
  arr.push("new element")
end

original_array = [1, 2, 3]
add_element(original_array)

puts original_array.inspect  # Output: [1, 2, 3, "new element"]
```

In this example, the `add_element` method modifies the array by adding a new element. When we print the `original_array` after calling the method, we see that it has been changed.

This behavior is consistent with Ruby's object passing mechanism, where variables hold references to objects, and it's these references that are passed to methods. For mutable objects like arrays, this allows methods to modify the original object.

### 4. What happens when you reassign a variable inside a method? Does it affect the original object passed to the method?

When you reassign a variable inside a method in Ruby, it does not affect the original object passed to the method. This is because reassignment creates a new local variable within the method's scope, which is separate from the original object.

Here's an example to illustrate this:

```ruby
def change_number(num)
  num = 10
end

x = 5
change_number(x)
puts x  # Output: 5
```

In this case, even though we reassign `num` inside the method, the original variable `x` remains unchanged. The reassignment only affects the local variable within the method's scope.

This behavior is consistent for both mutable and immutable objects. However, it's important to note that this is different from mutating an object. If you perform operations that mutate the object (like `<<` for arrays or `[]=` for hashes), those changes will affect the original object.

### 5. How can you determine if two variables are pointing to the same object in Ruby?

object_id method


### 6. Why is it important to know which methods in Ruby mutate the caller and which don't?

Understanding which methods in Ruby mutate the caller and which don't is crucial for several reasons:
1.  Predictable code behavior: Knowing whether a method mutates its caller helps you predict how your code will behave. This is essential for writing reliable and bug-free programs.
2.  Avoiding unintended side effects: Methods that mutate their caller can cause unexpected changes in other parts of your program. Being aware of these methods helps you avoid accidental modifications to your data.
3.  Efficient programming: Understanding mutation can help you write more efficient code. Sometimes, you might want to mutate an object to avoid unnecessary object creation.
4.  Debugging: When troubleshooting issues, knowing which methods mutate can help you quickly identify the source of unexpected changes in your data.
5.  Method chaining: Mutation knowledge is crucial when chaining methods. Methods that return self can be chained, while those that don't mutate often return a new object.
6.  Writing clear and intention-revealing code: By understanding mutation, you can choose the appropriate methods to clearly express your intentions in the code.

Remember, Ruby has both mutating and non-mutating versions of many methods (like `sort` and `sort!`). Knowing the difference allows you to choose the right tool for each situation in your programs.


### 7. How does variable scope relate to the concepts of pass by reference and pass by value?

Variable scope in Ruby is closely related to the concepts of pass by reference and pass by value, particularly in how it affects the behavior of variables inside and outside of methods.

In Ruby, variables have different scopes: local, instance, class, and global. When we pass variables to methods, we're dealing with local variable scope.

When a variable is passed to a method:
1.  If it's an immutable object (like numbers or booleans), it behaves like pass by value. The method receives a copy of the value, and any changes to the variable inside the method don't affect the original variable outside.
2.  If it's a mutable object (like arrays or hashes), it behaves more like pass by reference. The method receives a reference to the object, and mutations to the object inside the method will affect the original object outside.

However, reassignment inside a method always creates a new local variable, regardless of whether the object is mutable or immutable. This new variable is scoped only to the method and doesn't affect the original variable outside the method.

### 8. Can you explain why Ruby is sometimes described as "pass by reference value" rather than strictly pass by value or pass by reference?

Ruby is often described as "pass by reference value" because it combines aspects of both pass by value and pass by reference, which can lead to some confusion.

In Ruby, when you pass an object to a method, what's actually being passed is a reference to that object, not the object itself. This reference is passed by value. This means:
1.  The method receives a copy of the reference to the object, not the original reference.  
2.  If you reassign the parameter inside the method, it doesn't affect the original variable outside the method.  
3.  However, if you use the reference to mutate the object it points to, those changes will be reflected in the original object.
This behavior explains why:
* Reassignment inside a method doesn't affect the original variable.  
* Mutating operations on objects (like appending to an array) do affect the original object.
 
This mechanism allows Ruby to provide consistent behavior across different types of objects while still allowing for efficient passing of large objects.


## Methods

### 1. What is the difference between `puts` and `return` in Ruby methods?

1.  `puts`:  
    •   `puts` is a method used to output information to the console.  
    •   When you use `puts` inside a method, it will print the given value to the screen.  
    •   However, `puts` always returns `nil`, regardless of what it prints.  
    •   Using `puts` doesn't affect the return value of the method unless it's the last evaluated expression.
    2.  `return`:  
    •   `return` is a keyword used to explicitly specify what a method should return.  
    •   It immediately exits the method and returns the specified value.  
    •   If no value is specified with `return`, the method returns `nil`.  
    •   If `return` is not used, Ruby methods implicitly return the result of the last evaluated expression.

### 2. Explain the concept of method chaining in Ruby. Can you provide a simple example?

Method chaining is a technique where you call multiple methods in sequence, with each method call being performed on the result of the previous method. This allows you to perform several operations in a single line of code, making it more concise and often more readable.

In Ruby, method chaining works because methods typically return an object, and you can call methods on that returned object immediately. Here's a simple example:

```ruby
name = "ivan"
result = name.upcase.reverse

puts result  # Output: NAVI
```

In this example:
1.  We start with the string "ivan"  
2.  We call the `upcase` method, which returns "IVAN"  
3.  We then immediately call `reverse` on that result, which returns "NAVI"

Each method in the chain is called on the result of the previous method. This can be extended to more methods:

```ruby
numbers = [1, 2, 3, 4, 5]
result = numbers.select { |num| num.even? }.map { |num| num * 2 }

puts result  # Output: [4, 8]
```

Here, we first `select` the even numbers, then `map` over those to double each one.

Method chaining can make your code more readable and efficient, but it's important to use it judiciously. If a chain becomes too long or complex, it might be better to break it into separate steps for clarity.

Remember, for method chaining to work, each method in the chain (except possibly the last one) needs to return an object that responds to the next method in the chain.

### 3. How does the `map` method differ from the `each` method?

The `map` and `each` methods in Ruby are both used for iterating over collections, but they serve different purposes and have distinct behaviors:

1.  `each` method:  
    •   Iterates through each element in a collection.  
    •   Executes the given block for each element.  
    •   Always returns the original collection.  
    •   Used primarily for its side effects (like printing or modifying external variables).
    2.  `map` method:  
    •   Also iterates through each element in a collection.  
    •   Executes the given block for each element.  
    •   Creates a new array containing the results of running the block for every element.  
    •   Returns the new array with transformed values.

Here's an example to illustrate the difference:

```ruby
numbers = [1, 2, 3, 4, 5]

# Using each
each_result = numbers.each { |num| num * 2 }
puts each_result  # Output: [1, 2, 3, 4, 5]

# Using map
map_result = numbers.map { |num| num * 2 }
puts map_result  # Output: [2, 4, 6, 8, 10]
```

In this example, `each` doesn't change the original array, while `map` creates a new array with the transformed values.

Use `each` when you want to perform an action for each element without changing the collection. Use `map` when you want to transform each element and create a new collection with the results.
### 4. What does the `select` method do in Ruby? How might you use it?

The `select` method iterates over a collection (like an array or hash) and returns a new collection containing only the elements for which the given block returns a true value.

Here's a simple example to illustrate:

```ruby
numbers = [1, 2, 3, 4, 5, 6]
even_numbers = numbers.select { |num| num.even? }
puts even_numbers  # Output: [2, 4, 6]
```

In this example, `select` goes through each number in the array and keeps only those for which the block `{ |num| num.even? }` returns true.

The `select` method is particularly useful when you want to filter elements in a collection based on certain criteria. It doesn't modify the original collection but instead returns a new one with the selected elements.

Remember, if no elements match the condition in the block, `select` will return an empty collection.

### 5. Explain how the `times` method works in Ruby. When would you use it?

The `times` method in Ruby is a simple and useful way to repeat an action a specific number of times. Here's how it works:

1.  It's called on an integer.  
2.  It executes the given block the number of times specified by the integer.  
3.  It passes the current iteration number (starting from 0) to the block if the block accepts an argument.  
4.  It returns the original integer.

Here's a basic example:

```ruby
5.times do |i|
  puts "Iteration #{i}"
end
```

The `times` method is particularly useful when you need to perform an action a specific number of times, especially when you don't need an array of results (unlike `map`) or when you're not iterating over an existing collection (unlike `each`).
### 6. What is the difference between `!` and `?` at the end of method names in Ruby?

1.  Methods ending with `?`:  
    •   These methods typically return a boolean value (true or false).  
    •   They're often used for asking questions about an object.  
    •   Example: `array.empty?` returns true if the array has no elements, false otherwise.
    2.  Methods ending with `!`:  
    •   These methods typically modify the object they're called on, often in a more "dangerous" or surprising way.  
    •   They often have a non-`!` version that returns a new object instead of modifying the original.  
    •   Example: `array.sort!` sorts the array in place, modifying the original array, while `array.sort` returns a new sorted array without changing the original.
    
    It's important to note that these are conventions, not strict rules. Always check the documentation or the method's behavior to be sure of what it does.
    
    Remember, when using methods with `!`, be cautious as they modify the original object, which might lead to unexpected results if you're not aware of this behavior.
### 7. How does the `split` method work on strings? What does it return?

The `split` method in Ruby is used to divide a string into an array of substrings. Here's how it works:
1.  By default, `split` uses whitespace as a delimiter. It breaks the string at each occurrence of whitespace (spaces, tabs, newlines) and returns an array of the resulting substrings.
2.  You can also specify a different delimiter as an argument to `split`.
3.  `split` returns a new array containing the substrings.

Here are some examples:

```ruby
sentence = "Hello world! How are you?"
words = sentence.split
puts words.inspect  # Output: ["Hello", "world!", "How", "are", "you?"]

csv_data = "apple,banana,cherry"
fruits = csv_data.split(',')
puts fruits.inspect  # Output: ["apple", "banana", "cherry"]
```

In the first example, `split` uses the default whitespace delimiter. In the second, we specify a comma as the delimiter.

Remember, `split` does not modify the original string; it always returns a new array.
### 8. What is the purpose of the `join` method? How might you use it with an array?

The `join` method in Ruby is used to combine all elements of an array into a single string. Here's how it works and how you might use it:

1.  Purpose:  
    •   `join` concatenates the elements of an array into a single string.  
    •   By default, it joins the elements without any separator between them.
    2.  Usage with an array:  
    •   You can call `join` on any array.  
    •   You can optionally specify a separator string as an argument.

Here are some examples:

```ruby
fruits = ['apple', 'banana', 'cherry']

puts fruits.join
# Output: applebananacherry

puts fruits.join(', ')
# Output: apple, banana, cherry

numbers = [1, 2, 3, 4, 5]
puts numbers.join('-')
# Output: 1-2-3-4-5
```

The `join` method is particularly useful when you need to create a string from array elements, such as when formatting output or preparing data for display or storage.

Remember, `join` returns a new string and doesn't modify the original array.
### 9. What is a block in Ruby? How is it different from a method?

A block in Ruby is a chunk of code that you can pass to methods. It's enclosed in either do...end keywords or curly braces {}. Blocks are often used with iterators and can take parameters.

Here's how blocks differ from methods:
1.  Definition: Methods are defined with the `def` keyword, while blocks are passed to methods directly.
2.  Reusability: Methods can be called multiple times by name, while blocks are typically used once with the method they're passed to.
3.  Return value: Methods explicitly return a value, while blocks implicitly return the value of their last expression.
4.  Parameters: Methods have defined parameters, while blocks can work with yielded values from the method they're passed to.
5.  Scope: Methods create their own scope, while blocks can access variables from the surrounding scope.

Here's a simple example of a block:

```ruby
[1, 2, 3].each do |number|
  puts number * 2
end
```

In this case, the block is everything between `do` and `end`. It's passed to the `each` method and executed for each element in the array.

Blocks are fundamental to Ruby and are used extensively with built-in methods like `each`, `map`, `select`, and many others.
### 10. How do you pass a block to a method in Ruby? What are the two syntaxes for doing this?

`{ }` or `do..end`

### 11. What is the purpose of the `yield` keyword in Ruby methods?

The `yield` keyword in Ruby methods is used to transfer control from the method to a block that is passed to the method. Here's what it does:

1.  It allows a method to receive a block and execute it at a specific point within the method.
2.  When `yield` is called, Ruby executes the block that was passed to the method.
3.  After the block finishes executing, control returns to the method at the point immediately after the `yield` statement.
4.  You can pass arguments to the block by adding them to the `yield` statement.

Here's a simple example:

```ruby
def greet
  puts "Hello, "
  yield
  puts "Nice to meet you!"
end

greet { puts "Ivan!" }
```

This would output:

```ruby
Hello, 
Ivan!
Nice to meet you!
```

In this example, the greet method yields control to the block { puts "Ivan!" } when it encounters the yield keyword.

The yield keyword is a powerful feature in Ruby that allows for flexible and reusable code, especially when working with iterators and custom methods that need to perform some action that can vary depending on how the method is called.

### 12. How can you check if a block was given to a method?

In Ruby, you can check if a block was given to a method using the `block_given?` method. This method returns `true` if a block was passed to the method, and `false` otherwise.

Here's an example of how you might use it:

```ruby
def my_method
  if block_given?
    puts "A block was given!"
    yield
  else
    puts "No block was given."
  end
end

# Calling the method with a block
my_method { puts "This is the block" }

# Calling the method without a block
my_method
```

When you run this code, it will output:

```ruby
A block was given!
This is the block
No block was given.
```

Using `block_given?` allows your method to behave differently depending on whether a block was passed to it or not. This can be particularly useful when you want to make your methods more flexible and able to handle different scenarios.

### 13. What is the difference between `each` and `map` when used with blocks?

The difference between `each` and `map` when used with blocks in Ruby is primarily in their return values and intended use:

1.  `each`:  
    •   Iterates through each element in a collection.  
    •   Executes the given block for each element.  
    •   Always returns the original collection.  
    •   Used primarily for its side effects (like printing or modifying external variables).
    2.  `map`:  
    •   Also iterates through each element in a collection.  
    •   Executes the given block for each element.  
    •   Creates a new array containing the results of running the block for every element.  
    •   Returns the new array with transformed values.

Here's an example to illustrate:

```ruby
numbers = [1, 2, 3, 4, 5]

# Using each
each_result = numbers.each { |num| num * 2 }
puts each_result  # Output: [1, 2, 3, 4, 5]

# Using map
map_result = numbers.map { |num| num * 2 }
puts map_result  # Output: [2, 4, 6, 8, 10]
```

In this example, `each` doesn't change the original array, while `map` creates a new array with the transformed values.

Use `each` when you want to perform an action for each element without changing the collection. Use `map` when you want to transform each element and create a new collection with the results.

### 14. How does the `select` method work with blocks? What does it return?

The `select` method in Ruby works with blocks to filter elements from a collection based on a condition. Here's how it functions:
1.  It iterates over each element in the collection (like an array or hash).  
2.  For each element, it passes the element to the block.  
3.  If the block returns a truthy value for an element, that element is included in the result.  
4.  If the block returns a falsy value (false or nil), that element is excluded.

The `select` method returns a new array containing all elements for which the block returns a true value.

Here's an example:

```ruby
numbers = [1, 2, 3, 4, 5, 6]
even_numbers = numbers.select { |num| num.even? }
puts even_numbers  # Output: [2, 4, 6]
```

In this case, `select` goes through each number and keeps only those for which the block `{ |num| num.even? }` returns true.

Remember, `select` doesn't modify the original collection. Instead, it returns a new array with the selected elements. If no elements match the condition in the block, `select` will return an empty array.

### 15. How can you pass arguments to a block? Can you give an example?

In Ruby, you can pass arguments to a block when you yield to it from within a method. Here's how it works:
1.  In the method, you can pass arguments to `yield`:

```ruby
def example_method
    yield(1, 2)
end
```

2.  When calling the method, you define the block parameters to receive these arguments:

```ruby
example_method { |a, b| puts "Received #{a} and #{b}" }
```
The number of parameters in the block should match the number of arguments passed to `yield`. If you pass more arguments than the block expects, the extra ones are ignored. If you pass fewer, the missing ones are set to `nil`.

Here's a more complete example:

```ruby
def my_method
  yield("Hello", 42)
end

my_method do |greeting, number|
  puts "#{greeting}, the answer is #{number}"
end
```

This will output: "Hello, the answer is 42"

Remember, the block parameters are local to the block and won't affect variables with the same names outside the block.

### 16. What is the difference between `{...}` and `do...end` when defining blocks?

In Ruby, both `{...}` and `do...end` are used to define blocks, but they have some differences in usage and precedence:

1.  Syntax:  
    •   `{...}` is typically used for single-line blocks  
    •   `do...end` is usually used for multi-line blocks
    2.  Precedence:  
    •   `{...}` has higher precedence  
    •   `do...end` has lower precedence
    3.  Convention:  
    •   `{...}` is often used with methods that take blocks as arguments  
    •   `do...end` is commonly used with language constructs and method definitions


### 17. How does the `sort` method use blocks to determine the order of elements?

The `sort` method in Ruby can use blocks to determine the order of elements. Here's how it works:

1.  By default, `sort` uses the `<=>` (spaceship) operator to compare elements.
2.  When you provide a block to `sort`, it uses that block to determine the order instead.
3.  The block should take two parameters, which represent two elements being compared.
4.  The block should return -1 if the first element should come before the second, 1 if it should come after, and 0 if they are equal.

Here's an example:

```ruby
numbers = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3]

sorted = numbers.sort { |a, b| a <=> b }  # ascending order
puts sorted.inspect  # [1, 1, 2, 3, 3, 4, 5, 5, 6, 9]

sorted = numbers.sort { |a, b| b <=> a }  # descending order
puts sorted.inspect  # [9, 6, 5, 5, 4, 3, 3, 2, 1, 1]
```

You can also use blocks to sort by specific criteria:

```ruby
fruits = ["apple", "banana", "cherry"]
sorted = fruits.sort { |a, b| a.length <=> b.length }
puts sorted.inspect  # ["apple", "cherry", "banana"]
```


### 18. What does the `<<` operator do to an array? Is it mutating or non-mutating?

Appends an element to the Array and it is a mutating method

### 19. Is the `+` method for arrays mutating or non-mutating? How about for strings?

The `+` method for arrays in Ruby is non-mutating. When you use the `+` method to concatenate arrays, it creates and returns a new array containing all the elements from both arrays, leaving the original arrays unchanged.

The `+` method for Strings, concatenate two Strings together and returning a new object. Is a non-mutating method as well.

### 20. How does assignment (=) interact with mutation? Is it a mutating operation?

Assignment (=) in Ruby is not a mutating operation itself. However, it's important to understand how it interacts with mutation:
1.  For immutable objects (like numbers or symbols):  
    Assignment simply points the variable to a new object.
    2.  For mutable objects (like arrays or hashes):  
    Assignment makes the variable reference a different object, but doesn't change the original object.

Here's an example to illustrate:

```ruby
a = [1, 2, 3]
b = a
a = [4, 5, 6]

puts a.inspect  # [4, 5, 6]
puts b.inspect  # [1, 2, 3]
```

In this case, `a = [4, 5, 6]` doesn't mutate the original array. It creates a new array and makes `a` point to it. `b` still points to the original array.

However, if you mutate the object that a variable points to, all variables referencing that object will see the change:

```ruby
a = [1, 2, 3]
b = a
a[0] = 4

puts a.inspect  # [4, 2, 3]
puts b.inspect  # [4, 2, 3]
```

Here, `a[0] = 4` mutates the array that both `a` and `b` reference.
















