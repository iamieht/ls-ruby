# Practice Questions

[Launch School - an online school for Software Engineers](https://launchschool.com/posts/108e5025)

## Open-ended questions

1.  Explain the concept of variable scope in Ruby. How does it differ between methods and blocks?
2.  What is the difference between puts and return in Ruby? Provide an example.
3.  Describe the concept of pass-by-reference vs. pass-by-value in Ruby. How does it apply to different data types?
4.  What is variable shadowing in Ruby? When might it occur, and how can it be avoided?
5.  Explain the concept of truthiness in Ruby. What values are considered falsy?
6.  How do Ruby's `Array#map` and `Array#select` methods differ? Provide examples of when you might use each.
7.  What is the difference between `==` and `===` in Ruby? When would you use each?
8.  Describe the concept of mutating vs. non-mutating methods in Ruby. Provide examples of each.
9.  How does Ruby handle variable reassignment vs. method invocation with respect to mutability?
10. Explain how blocks work in Ruby. How do they differ from methods?
11. What is the difference between `puts` and `p` in Ruby? When might you choose one over the other?
12. Explain the concept of short-circuit evaluation in Ruby. How does it apply to the `&&` and `||` operators?
13. What is the difference between `Array#map` and `Array#each`? Provide an example where using `map` would be more appropriate than `each`.
14. Describe the difference between `break` and `next` in Ruby loops. When would you use each?
15. What is method chaining in Ruby? Provide an example and explain how it works.
16. Explain the concept of method definition and method invocation. How are they different?7.  What is the difference between `==` and `equal?` in Ruby? When would you use each?
17. How does Ruby handle variable reassignment within a method? Does it affect the original variable outside the method?
18. Describe the concept of implicit return in Ruby. How does it differ from explicit returns?
19. What is the difference between `Array#select` and `Array#reject`? Provide examples of when you might use each.
20. Explain how default parameters work in Ruby methods. Provide an example.
21. What is the splat operator (`*`) in Ruby? Provide examples of how it can be used in method definitions and method calls.
22. How does Ruby's `case` statement differ from a series of `if/elsif` statements? When might you choose to use a `case` statement?
23. Explain the concept of nested data structures in Ruby. How would you access elements in a nested array or hash?
24. What is the purpose of the `Enumerable` module in Ruby? Name and describe three methods from this module.


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






