# Mutating vs. Non-mutating methods

## Methods with a `!`

* The bang suffix (`!`) at the end of the method name usually indicates that the method will change (or mutate) the caller permanently. Unfortunately this is not always the case.
* Also, please note that there are methods like `pop` and `push` that are destructive, but do not have a `!` at the end.

## Mutating the Caller and Arguments

* it is possible that a method can unexpectedly change an object used as the caller or as an argument.

```ruby
def mutate(arr)
  arr.pop
end

def not_mutate(arr)
  arr.select { |i| i > 3 }
end

a = [1, 2, 3, 4, 5, 6]
mutate(a)
not_mutate(a)

puts a
```

The `mutate` method performed a destructive action (i.e., `pop`) on its argument, thereby modifying the `a` array, even though `a` was initialized outside of the method. The `not_mutate` method performed a non-destructive action (i.e., `select`), and therefore the original variable was unmodified. It's worth noting that inside `mutate`, `arr.pop` mutates its caller. That, in turn, mutates the argument passed to `mutate`. However, inside `not_mutate`, `arr.select` does not mutate its caller, so `not_mutate` doesn't mutate its argument either.

* Mutating the caller is similar to mutating arguments, but applies to the object used to call a method. For instance, in `array.pop`, the array specified by `array` is used to call the `pop` method. The difference is that mutating an argument alters the value of an object passed to a method as an argument, while mutating the caller modifies the object used to call the method.*

[Mutating and Non-mutating methods](https://launchschool.medium.com/ruby-objects-mutating-and-non-mutating-methods-78023d849a5f)

Certain methods in Ruby can modify the original object they're called on or the objects passed as arguments. Let's break it down:

1.  **"Mutates the caller"**: This means the method changes the object it's called on. For example, if you have an array and call a method that adds an element to it, the original array is modified.
2.  **"Mutates the arguments"**: This means the method changes the objects passed to it as arguments.
3. **"Change the value in that object's address space"**: This refers to modifying the actual object in memory, rather than creating a new object.

Here's an example to illustrate:

```ruby
def add_exclamation(str)
  str << "!"
end

original = "Hello"
add_exclamation(original)
puts original  # Outputs: "Hello!"
```

In this case, `add_exclamation` mutates its argument `str` by appending "!" to it. This changes the original string object, rather than creating a new string. It's important to be aware of which methods mutate objects and which don't, as this affects how variables reference objects and can lead to unexpected behavior if not carefully considered.