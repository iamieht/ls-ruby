# Flow Control

- **Conditional flow** in computer programming is when you want your data to do the right thing when it's supposed to. For that we use **conditionals**.

## Conditionals

- Are forks in the road. They tell the data where to go based on some defined parameters.
- Are formed using a combination of `if` statements and comparison and logical operators.
- Ruby has also a reserved word `unless` that acts as the opposite of `if`.

## Comparisons

- They always return a boolean value (`true` or `false`).
- The expressions or values that an operator uses are its **operands**. 
- In comparisons, the expressions to the left and right of the operator are the operands.

### `==` "is equal to" operator

- Anything to the left of the operator is exactly equal to anything on the right.
- Strings, to be equal, must have the exact same value.
- Two values must have the same type or they are not equal.

### `!=` "not equal to" operator

- Anything to the left of the operator is not equal to anything to the right.
- If two values have different types, the return value is `true`.

### `<` "less than" operator

- Anything to the left of the operator has a lower value than anything to the right.

### `>` "greater than" operator

- Anything to the left of the operator has a higher value than anything to the right.
- When comparing strings, the comparison is character-by-character.
- Ruby moves from left-to-right in the strings looking for the first character that is different from its counterpart in the other string.
- Once it finds a character that differs, it compares that character with its counterpart, and makes a decision based on that.
- If both strings are equal up to the length of the shorter string, then the shorter string is considered less than the longer string.
- you can not use `<` or `<=` and `>` or `>=`  with values of different types.

### `<=` "less than or equal to" operator

- Anything to the left of the operator is less than or equal to anything to the right.

### `>=` "greater than or equal to" operator

- Anything to the left of the operator is greater than or equal to anything to the right.

## Combining Expressions

### Logical operators

- `&&` and `||` don't always return `true` or `false`, but they do when they operate on boolean values.

#### `&&` "and" operator

- Expressions to the left and to the right of this operator have to be both true for the entire expression to be evaluated to true.

```ruby
irb :001 > (4 == 4) && (5 == 5) 
=> true 
irb :002 > (4 == 5) && (5 == 5) 
=> false 
irb :002 > (4 == 5) && (5 == 6) 
=> false
```

#### `||` "or" operator

- Either the expression to the left has to be true, or the expression to the right has to be true for the entire expression to be evaluated to true.

```ruby
irb :001 > (4 == 4) || (5 == 5) 
=> true 
irb :002 > (4 == 5) || (5 == 5) 
=> true 
irb :002 > (4 == 5) || (5 == 6) 
=> false
```

#### `!` "not" operator

- When you add this in front of a boolean expression it will change that boolean value to its opposite.

```ruby
irb :001 > !(4 == 4) 
=> false
```

### Order of precedence

- The following is a list of operations from highest order of precedence (top) to lowest (bottom):
	1. `<=`, `<`, `>`, `>=` **Comparison**
	2. `==`, `!=` **Equality**
	3. `&&` - Logical AND
	4. `||` - Logical OR
