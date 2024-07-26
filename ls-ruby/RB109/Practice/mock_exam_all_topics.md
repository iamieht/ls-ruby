# Mock Exam (All Topics)

## Variables as Pointers

Explain the concept of "Variables as Pointers". As part of your explanation, include a code snippet that accurately demonstrates this concept, and explain the effect it has within that example.

### Answers

```ruby
a = 'mango'
b = a
a = 'kiwi'
puts a	#=> 'kiwi'
puts b	#=> 'mango'
```

On line 1, the local variable `a` is assigned to the string `mango`. On line 2, the local variable `b` is assigned to the value referenced by local variable `a`. Therefore `b` is assigned to `mango`. On line 3, `a` is reassigned to the string `kiwi`. On lines 3 and 4, the `puts` method is invoked and gets passed in the values referenced by local variables `a` and `b`, respectively. Since `a` references `kiwi` and `b` references `mango`, that is what is output.

This code snippet demonstrates, variables as pointers, since variables are references to physical address in memory that stores values and are not deeply linked to each other.

**Variables** are labels that references or points to physical address in memory that store values.

#### More Examples

##### Example 1

```ruby
a = "hi there"
b = a
a = "not here"
```

##### Example 2

```ruby
a = "hi there"
b = a
a << ", Bob"
```

##### Example 3

```ruby
a = [1, 2, 3, 3]
b = a
c = a.uniq
```

##### Example 4

```ruby
def test(b)
  b.map { |letter| "I like the letter: #{letter}" }
end

a = ['a', 'b', 'c']
test(a)
```

##### Example 5

```ruby
a = 5.2
b = 7.3
a = b
b += 1.1
puts a
puts b
```

##### Example 6

```ruby
def test(str)
  str  += '!'
  str.downcase!
end

test_str = 'Written Assessment'
test(test_str)

puts test_str
```

##### Example 7

```ruby
def plus(x, y)
  x = x + y
end

a = 3
b = plus(a, 2)

puts a
puts b
```

##### Example 8

```ruby
def increment(x)
  x << 'b'
end

y = 'a'

increment(y)
puts y
```

##### Example 9

```ruby
def change_name(name) 
   name = 'bob'      # does this reassignment change the object outside the method?
end

name = 'jim'
change_name(name)

puts name
```

##### Example 10

```ruby
def cap(str) 
    str.capitalize!   # does this affect the object outside the method?
end

name = "jim"
cap(name)
puts name
```

##### Example 11

```ruby
a = [1, 3]
b = [2]
arr = [a, b]
arra[1] = 5

arr
```

##### Example 12

```ruby
arr1 = ["a", "b", "c"]
arr2 = arr1.dup

arr2.map! do |char| 
    char.upcase
end

puts arr1
puts arr2
```
## Variable Shadowing

Explain the concept of "Variables Shadowing". As part of your explanation, include a code snippet that accurately demonstrates this concept, and explain the effect it has within that example.

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

**Variable Shadowing** is a mechanism that comes into play when we have a block that is passed to a method invocation as an argument with a parameter that has the same name as a local variable in the outer scope, preventing access to the outer scope variable.

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

##### Example 2 (No variable shadowing according to me)

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
