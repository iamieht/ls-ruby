# Mock Exam 2

## Question #1

Depending on a method to modify its arguments can be tricky:

```ruby
def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
```

Whether the above "coincidentally" does what we think we wanted depends upon what is going on inside the method.

How can we change this code to make the result easier to predict and easier for the next programmer to maintain? That is, the resulting method should not mutate either argument, but `my_string` should be set to `'pumpkinsrutabaga'` and `my_array` should be set to `['pumpkins', 'rutabaga']`

## Question #2

What do you expect to happen when the `greeting` variable is referenced in the last line of the code below?

```ruby
if false
  greeting = "hello world"
end

greeting
```


## Question #3

What is the result of the last line in the code below?

```ruby
greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings
```


## Question #4

What will be printed by each of these code groups?

A)

```ruby
def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"
```

B)

```ruby
def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"
```

C)

```ruby
def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"
```


## Question #5

Ben was tasked to write a simple ruby method to determine if an input string is an IP address representing dot-separated numbers. e.g. "10.4.5.11". He is not familiar with regular expressions. Alyssa supplied Ben with a method called `is_an_ip_number?` that determines if a string is a numeric string between `0` and `255` as required for IP numbers and asked Ben to use it.

```ruby
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    break unless is_an_ip_number?(word)
  end
  return true
end
```

Alyssa reviewed Ben's code and says "It's a good start, but you missed a few things. You're not returning a false condition, and you're not handling the case that there are more or fewer than 4 components to the IP address (e.g. "4.5.5" or "1.2.3.4.5" should be invalid)."

Help Ben fix his code.

## Question #6

Are `a` and `b` referencing the same object? Why? What is `a`? What if we called `map!` instead of `map`?

```ruby
def test(b)
  b.map { |letter| "I like the letter: #{letter}" }
end

a = ['a', 'b', 'c']
test(a)
```


## Question #7

What will be output by this code and why?

```ruby
value1 = (3 < 2)        
value2 = (6 % 2 == 0)
value3 = ('Ruby' == 'ruby')
  
p (if value1
    puts "It must be value1"
elsif value2 && value3
    puts "It must be value2 and value3"
end)
```

#### Bonus Questions ####

1. Do `value1`, `value2`, and `value3` reference expressions?
2. Would it ever be possible for both of these calls to `puts` to be executed? (i.e., if `value1`, `value2`, and `value3` were all truthy?)
3. Are there any return values in this code? If so, what are they?

## Question #8

Predict the output of this snippet and explain why.

```ruby
num1 = 1
arr1 = [num1, 2, 3]

num1 = 42

p arr1 # What is output by this line?

arr1[0] = 42

p arr1 # What is output by this line?
```

### Bonus Questions ##

1. Does `arr1` contain the variable `num1` as an element?
2. Is there anything we can do to `num1` to change the value at index 0 in our array?
3. What could we do instead of line 9 (arr1[0] = 42) that would have the same outcome on line 11?

## Question #9

What will line 6 output and why?

```ruby
m = "foo"
n = "bar"
o = m
o += n
  
p m, n, o
```

Now, what will be the output and why?

```ruby
m = "foo"
n = "bar"
o = m
o << n
  
p m, n, o
```

And now?

```ruby
m = "foo"
n = m[0] # "f"
n.upcase!
p m
p n
m[0] = 'g'
```

What's the difference?

1. How many strings exist at the end of this code snippet? What are they?
2. Are there any method invocations in this code? If so, what are the callers, and what are the arguments?
3. Does commenting out the first 6 lines have any effect on the last output, `p m, n, o`? Why or why not?

## Question #10

Explain what's going on here?

```ruby
def a
  puts "running"
  [true, false].sample
end

if a
  puts "a is truthy"
end

if 3.times { a }
  puts "a is truthy"
end
```


## Question #11

Explain the following code, and identify the output. Is this code running as expected?

```ruby
def bad_math(num)
  if num = 42
    puts 'It\'s 42'
  else
    puts 'It\'s not 42'
  end
end

bad_math(42)
```

1. What happens if we pass a falsy value into `bad_math`?
2. What does an assignment evaluate to?
3. If this code runs without error, what does that mean about `num = 42`


