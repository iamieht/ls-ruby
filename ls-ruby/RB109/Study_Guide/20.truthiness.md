# Truthiness

* Truthiness differs from the boolean values `true` and `false` since Ruby considers several different values be "truthy", while only `true` is `true`.
* There are multiple values that Ruby treats as "falsy" (or "falsey"), but only `false` is `false`
* Ruby considers everything to be truthy other than the two falsy values, `false` and `nil`_.

This means that we can use any expression in a conditional, or with logical operators. As long as the expression isn't falsy, Ruby considers the value to be true. Note that an expression that Ruby _considers true_ is not the same as the `true` object, and something the Ruby _considers false_ is not the same as the `false` object. Truthiness concerns itself with the difference between values that Ruby considers true or false.

```ruby
num = 5

if num
  puts "valid number"
else
  puts "error!"
end

# valid number
```

If you run that code, it will actually output `"valid number"`. The reason is that Ruby considers any integer to be truthy.

## Expressions and Conditionals

n real code, you won't use the `true` or `false` objects directly in a conditional. Instead, you'll likely be evaluating some expression or method call in a conditional. Whatever the expression, it should evaluate to a `true` or `false` object.

```ruby
num = 5

if (num < 10)
  puts "small number"
else
  puts "large number"
end

# small number
```

The above outputs `"small number"` because the expression `num < 10` evaluates as true.

```ruby
puts "it's true!" if some_method_call
```

The above will output `"it's true!"` if `some_method_call` returns a truthy value.

When using method calls as a conditional expression in this way, you'll generally want the method to return a boolean rather than relying on the truthiness of a non-boolean return value.

## Logical Operators

Logical operators will return either a truthy or falsy value when evaluating two expressions.

* `&&`: this operator is the "and" operator and, in the following examples, will return `true` only if both expressions being evaluated are true.

```shell
irb:001> true && true
=> true
irb:002> true && false
=> false
irb:003> num = 5
=> 5
irb:004> num < 10 && num.odd?
=> true
irb:005> num > 10 && num.odd?
=> false
```

* `||` : this operator is the "or" operator and, in the following examples, will return `true` if either one of the evaluated objects is true. It's less strict than the `&&` operator.

```shell
irb:001> true || true
=> true
irb:002> false || false
=> false
irb:003> true || false
=> true
irb:004> false || true
=> true
```
* Short Circuiting: the `&&` and `||` operators exhibit a behavior called _short circuiting_, which means it will stop evaluating expressions once it can guarantee the return value.

```shell
irb:001> false && 3/0
=> false
```

The `&&` will short circuit when it encounters the first `false` expression. Notice the above code doesn't generate a `ZeroDivisionError`. This is because the `&&` operator didn't even evaluate the second expression; since the first expression is `false`, it can short circuit and return `false`.

```shell
irb:001> true || 3/0
=> true
```

The `||` will short circuit when it encounters the first `true` expression. The above code doesn't generate a `ZeroDivisionError` because `||` didn't evaluate the second expression; it short circuited after encountering `true`.