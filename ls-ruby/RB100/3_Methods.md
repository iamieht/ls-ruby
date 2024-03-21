# Methods

- What in most programming languages is called a procedure, it's called a Method in Ruby. 
- Allows you to extract common code to one place.
- It's define with the word `def` and ends with `end` 

```ruby
def say(parameter)
  # method body goes here
end
```
- A **parameter** is used to pass data from outside the method definition's scope in order to access it within the method definition.
- **Method invocation** is calling a method.
- **Arguments** are pieces of information that are passed to a method invocation to be modified or used to return a specific result.

## Default Parameters

- Are values assigned to the parameters in case the method is invoked without any argument.
```ruby
def say(words='hello')
  puts words + '.'
end

say()
say("hi")
say("how are you")
say("I'm fine")
```

## Method Definition and Local Variable Scope

- A method definition creates its own scope outside the regular flow of execution.
- local variables within a method definition cannot be referenced from outside of the method definition.
- local variables within a method definition cannot access data outside of the method definition (unless the data is passed in as an argument).

## puts vs return

- Every method returns the evaluated result of the last line that is executed, unless an explicit return comes before it.
- `p` prints out the return value
- `puts` output values as strings with a carriage return
- `print` output values as strings without a carriage return

## Chaining Methods

- Because we know for certain that every method call returns something, we can chain methods together.

```ruby
"hi there".length.to_s      # returns "8" - a String
```

## Method Calls as Arguments

- Ruby allows us to pass a method call as an argument to other methods.

```ruby
add(subtract(80, 10), multiply(subtract(20, 6), add(30, 5)))
=> 560
```

## The Call Stack

- The call stack helps Ruby keep track of what method is executing as well as where execution should resume when it returns.
- the call stack puts information about the current method on the top of the stack, then removes that information when the method returns.
- In Ruby, methods aren't the only thing that uses the call stack. Blocks, procs, and lambdas also use the call stack; in fact, they all use the same call stack as Ruby uses for methods.
- a **stack frame** -- that represents the global (top-level) portion of the program. The initial stack frame is sometimes called the `main` method. Ruby uses this frame to keep track of what part of the main program it is currently working on.