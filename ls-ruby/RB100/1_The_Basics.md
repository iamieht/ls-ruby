# The Basics

## Literals

* is any notation that lets you represent a fixed value in source code.
* These are all the literals in Ruby:

```ruby
'Hello, world!'          # string literal
375                      # integer literal
3.141528                 # float literal
true                     # boolean literal
{ 'a' => 1, 'b' => 2 }   # hash literal
[ 1, 2, 3 ]              # array literal
:sym                     # symbol literal
nil                      # nil literal
```

## Strings

- is a list of characters in a specific sequence.
- String [**literals**](#Literals) are either single quotes `'hi'` or double quotes `"hi"` 
- **String interpolation** is allowed only with double quotes

```ruby
# Ex. 1: with double quotes
"The man said, 'Hi there!'"

# Ex. 2: with single quotes and escaping
'The man said, \'Hi there!\''
```

```ruby
a = 10
"my favorite number is #{a}"
```

## Symbols

- is used when you want to reference something like a string but don't ever intend to print it to the screen or change it.
- Are **immutable**. 
- Symbols literals are `:`

```ruby
# Examples of symbols
:name
:a_symbol
:"surprisingly, this is also a symbol"
```

## Numbers

- **Integer**
- **Float**

```ruby
# Example of integer literals
1, 2, 3, 50, 10, 4345098098

# Example of float literals
1.2345, 2345.4267, 98.2234
```

## nil

- express "nothing" 
- literal `nil`
- To check if something is of type `nil` use the literal `.nil?`
- `nil` is **falsy** 

## Operations

### Adding, Subtracting, and Multiplying Integers

- `1 + 1` => 2
- `1 - 1` => 0
- `4 * 4` => 16

### Division vs. Modulo

- `16 / 4` => 4 (When dividing integers an integer is returned)
- `16 % 5` => 1 (Only with positive integers)

### Modulo vs. Remainder

- The `#remainder` method computes and returns the remainder of an integers division operation: `16.remainder(5)` => 1
- The `#divmod` method computes both the integer result of the division and its modulo value: `16.divmod(5)` => [3, 1]

### Multiplying and Dividing Floats

- `15.0 / 4` => 3.75 (Whenever a float is used in an operation a float is returned)
- `9.75 * 4.32` => 42.120000000005

### Equality Comparison

- To test for equality use the `==` operator ("is equal to" or "equal equal")
- It returns a boolean value (`true` or `false` )

### String Concatenation

- use the `+` operator to join two strings together.

