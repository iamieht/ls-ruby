# Mock Exam (All Topics)

## Variables as Pointers

## Variable Shadowing

In your own words, explain the concept of "Variables Shadowing". As part of your explanation, include a code snippet that accurately demonstrates this concept, and explain the effect it has within that example.

### Answer

```ruby
number = 7
3.times do |number|
	puts "My favorite number is #{number}"
end
```

On line 1, the variable `number` is initialized and references the integer object with value `7`.
On line 2, the `times` method is called on the integer object `3` and gets passed a block as an argument. With each iteration, the block parameter `number` is bound to the integer yield by the `times` method, starting with `0` up to `2`. 
On line 3, the value referenced by the `number` block variable is interpolated into the string object with value `"My favorite number is #{number}"` and gets passed to the `puts` method invocation as an argument and is outputted into the console.

This code outputs:

`My favorite number is 0`
`My favorite number is 1`
`My favorite number is 2`

In this code snippet, variable shadowing is demonstrated, as the block parameter `number` shadows the local variable `number` initialized in the outer scope.

**Variable Shadowing** is a mechanism in which a variable initialized in an outer scope cannot be accessed within a block, because a variable with a similar name is used within the block and 'shadows' the one in the outer scope.

#### More examples

##### Example 1

```ruby
a = 4
b = 22.times do |a| 
    a = 5 
    puts a
end

puts a
puts b
```

##### Example 2

```ruby
animal = "dog"

loop do |_| 
  animal = "cat" 
  break
end

puts animal
```

##### Example 3

```ruby
animal = "dog"

loop do |animal| 
    animal = "cat" 
    break
end
puts animal
```

##### Example 4

```ruby
n = 101.times do |n| 
    n = 11
end
puts n
```


## Local variable scope in relation to method definitions

## Local variable scope in relation to blocks

## Scope of constants

## Mutating values vs. reassigning values

## Method definition vs. method invocation

## Passing and using blocks with methods

## Default parameters

## Implicit vs. explicit return values

## Mutating vs. non-mutating methods

## Method return values as arguments to other methods

## Mutable vs. immutable data types

## Output vs. return

## Pass-by-reference vs. pass-by-value

## Truthiness
