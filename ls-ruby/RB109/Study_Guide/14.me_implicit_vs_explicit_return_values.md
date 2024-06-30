# Implicit vs.  Explicit return values

* Ruby expressions always return a value, even if that value is `nil` or an error.
* Ruby methods ALWAYS return the evaluated result of the last line of the expression unless an explicit return comes before it.

## Implicit

```ruby
def add_three(number)
  number + 3
end

returned_value = add_three(4)
puts returned_value
```

The last evaluated expression in method `add_three` is `number + 3` , so this expression is evaluated and returned.

## Explicit

```ruby
def add_three(number)
  return number + 3
end

returned_value = add_three(4)
puts returned_value
```

Here we are telling Ruby explicitly to return the value after evaluating the expression `number + 3` .

```ruby
def add_three(number)
  return number + 3
  number + 4
end

returned_value = add_three(4)
puts returned_value
```

When you place a `return` in the middle of the `add_three` method definition, it just returns the evaluated result of `number + 3`, which is 7, without executing the next line.

the `return` reserved word is not required in order to return something from a method.

```ruby
def just_assignment(number)
  foo = number + 3
end

just_assignment(2) # => 5
```

The assignment expression evaluates to 5, therefore that's what's returned.