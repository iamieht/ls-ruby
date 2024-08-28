# Parameters vs. Arguments

```ruby
def say(words) # => words is a parameter
	puts words
end
```

**Parameters** are used when you have data outside of a method definition's scope, but you need access to it within the method definition. If the method definition does not need access to any outside data, you do not need to define any parameters.

```ruby
say("Hello") # => "Hello is an argument"
```

**Arguments** are pieces of information that are sent to a method invocation to be modified or used to return a specific result. We "pass" arguments to a method when we call it.