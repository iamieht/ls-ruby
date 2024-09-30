# Mock Exam 3

## Question #1

What will this code output and why?

```ruby
def random_method(value)
  "Truthy value!" unless value
end

if random_method(true)
  new_value = "The if branch ran"
else
  new_value = "The else branch ran"
end

p new_value
```

1. What are the possible return values for `random_method`?
2. What would change if instead of passing `true` into `random_method`, we passed in an empty array?
3. How would this problem change if we replaced the body of `random_method` with `value unless value`?

## Question #2

What will be the output of the following code? Why?

```ruby
def foo
  p "foo was called"
end

def bar
  puts "bar was called"
end

result = foo && bar
```

1. What does `result` reference at the end of this snippet?
2. What happens if we change both methods to use `p` instead of `puts`?
3. What could we do if we wanted `result` to reference a *boolean* to indicate whether both methods have truthy return values?


## Question #3

Explain what happens when we run this code and the output we will get.

```ruby
greeting = 'Hello'

loop do
  greeting = 'Howdy'
  farewell = 'Goodbye'
  p greeting # what will be output by this line?
  p farewell # what will be output by this line?
  break
end

p greeting # what will be output by this line?
p farewell # what will be output by this line?
```

1. How many `greeting` variables exist in this code? How many `farewell`?
2. What's the difference between the action happening on lines 5 & 6?
3. What are three distinct ways we could fix this code to get `Howdy` and `Goodbye` as our only greetings that are output?

## Question #4

Explain what happens when we run this code and the output we will get.

```ruby
def a
  3
end

a = 1

loop do |a|
  a = 2
  break
end

puts a
```


## Question #5

Explain what happens when we run this code and the output we will get.

```ruby
1.times do
  a = 1

  loop do |a|
    a = 2
    break
  end

  puts a
end
```


## Question #6

Explain what happens when we run this code and the output we will get.

```ruby
def my_method
  a = 0
  1.times do
    a = 1

    loop do |a|
      a = 2
      break
    end

    puts a
    break
  end
end

my_method
```

How many variable a's?

## Question #7

Explain what happens when this code executes. What does `counter` reference?

```ruby
counter = 3

loop do |counter|
  puts "I'm skippin' rocks. This rock skipped #{counter} times!"
  counter += 1
end
```

1. Is the `counter` on line 4 the same as the `counter` on line 2?
2. What do we need to know about Ruby methods to know what the inner `counter` variable references?
3. What happens when we run this code if we get rid of the block parameter, `|counter|`?


## Question #8

We tried to write a function that capitalizes the strings in a sentence and adds an exclamation point. Why didn't it work?

```ruby
def exclaim(array)
  array.each do |sentence|
    sentence[0].upcase!
    sentence += '!'
  end

  p array # what will this output?
end

actions = ['twist it', 'spin it', 'bop it']
exclaim(actions)
```

1. How do we explain a mutating method, `upcase!` not showing any change?
2. How can we fix this code?
3. How could we make a similar function with 'pass-by-value' behavior?


## Question #9

What will this code output and why?

```ruby
greetings = ['hello', 'howdy']
names = ['homer', 'marge']

def random_greeting(name)
  name = name.capitalize
  greeting = greetings.sample
  p greeting + ' ' + name
end

name = names.sample
random_greeting(name)
```

1. How many `name` variables exist in this code? How are they related?
2. Fix this code.
3. After fixing the code, update it so that we don't ever repeat names or greetings. How should we handle running out of names/greetings?

## Question #10

What will this code output and why?

```ruby
def greet
  return "Hello"

  puts "Hello!"
end

response = greet == "Hello" ? "Hi" : "Bye"
puts response
```


## Question #11

What will this code output and why?

```ruby
num = 25

5.times do |x|
  p x
  5.times do |num|
    p num
    if num == 25
      puts "{x} * #{num} == 25"
    end
  end
end
```

