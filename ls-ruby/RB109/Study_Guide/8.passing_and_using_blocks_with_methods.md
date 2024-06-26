# Passing and using blocks with methods

The way that an argument is used, whether it is a method parameter or a block, depends on how the method is defined.

## Case 1: method parameter not used

```ruby
def greetings(str)
  puts "Goodbye"
end

word = "Hello"

greetings(word)

# Outputs 'Goodbye' as `str` parameter is not used
```

## Case 2: method parameter used

```ruby
def greetings(str)
  puts str
  puts "Goodbye"
end

word = "Hello"

greetings(word)

# Outputs 'Hello'
# Outputs 'Goodbye'
```

## Case 3: block not executed

```ruby
def greetings
  puts "Goodbye"
end

word = "Hello"

greetings do
  puts word
end

# Outputs 'Goodbye'
```

The `greeting` method is invoked with a block, but the method is not defined to use a block in any way so the block is not executed.
## Case 4: block executed

```ruby
def greetings
  yield
  puts "Goodbye"
end

word = "Hello"

greetings do
  puts word
end

# Outputs 'Hello'
# Outputs 'Goodbye'
```

In this case, the `yield` keyword is what controls the interaction with the block, in this case it executes the block once. 

Blocks and methods can interact with each other; the level of interaction is set by the method definition and then used at method invocation.

When invoking a method with a block, we aren't just limited to executing code within the block; depending on the method definition, the method can use the _return value_ of the block to perform some other action.

```ruby
a = "hello"

[1, 2, 3].map { |num| a } # => ["hello", "hello", "hello"]
```

The `Array#map` method is defined in such a way that it uses the return value of the block to perform transformation on each element in an array. In the above example, the `#map` method doesn't have direct access to the `a` variable. However, the block that we pass to `map` (and that `map` calls) does have access to `a`. Thus, the block can use the value of `a` to determine the transformation value for each array element.

### Summary

* Method definitions _cannot_ directly access local variables initialized outside of the method definition, nor can local variables initialized outside of the method definition be reassigned from within it.
* A block _can_ access local variables initialized outside of the block and can reassign those variables.
* methods can access local variables passed in as arguments
* methods can access local variables through interaction with blocks.
* we can think of **method definition** as setting a certain scope for any local variables in terms of the parameters that the method definition has, what it does with those parameters, and also how it interacts (if at all) with a block.
* We can then think of **method invocation** as using the scope set by the method definition. If the method is defined to use a block, then the scope of the block can provide additional flexibility in terms of how the method invocation interacts with its surroundings.
* The `def..end` construction in Ruby is method definition
* Referencing a method name, either of an existing method or subsequent to definition, is method invocation
* Method invocation followed by `{..}` or `do..end` defines a block; the block is _part of_ the method invocation
* Method definition _sets_ a scope for local variables in terms of parameters and interaction with blocks
* Method invocation _uses_ the scope set by the method definition