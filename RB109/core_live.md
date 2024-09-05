# Core Live Sessions

## Session 26.08.2024

### What will be output by this code and why?

value1 = (3 < 2)        #false
value2 = (6 % 2 == 0)   #true 
value3 = ('Ruby' == 'ruby') #false
  
p (if value1
    puts "It must be value1"
elsif value2 && value3
    puts "It must be value2 and value3"
end)

#### Bonus Questions ####
# 1. Do `value1`, `value2`, and `value3` reference expressions?
# 2. Would it ever be possible for both of these calls to `puts` to be executed? (i.e., if `value1`, `value2`, and `value3` were all truthy?)
# 3. Are there any return values in this code? If so, what are they? 

### Homework

# Write a method that accepts an alphabetical character and returns
# the 'value' of that character.

# The 'value' is relative to where the letter appears in the alphabet.
# 'a' is 1, 'b' is 2, 'B' is 2, etc...
# For invalid inputs, return `nil`.


#### Bonus Question ####
# What assumptions did you have to make in order to write this function?
- Only English alphabetical characters are valid, anything else is invalid (ex. Any other type rather than Strings)
- Uppercase characters are supported as well
- Only single characters are allowed 

```ruby
def get_char_value(char)
  valid_chars = 'abcdefghijklmnopqrstuvwxyz'

  return nil if !char.instance_of?(String) ||
                !valid_chars.include?(char.to_s.downcase) ||
                char.length > 1

  valid_chars.index(char.downcase) + 1
end
```



## Session 29.08.2024

 # Predict the output of this snippet and explain why.
num1 = 1
arr1 = [num1, 2, 3]

num1 = 42

p arr1 # What is output by this line?

arr1[0] = 42

p arr1 # What is output by this line?

## Bonus Questions ##
# 1. Does `arr1` contain the variable `num1` as an element?
# 2. Is there anything we can do to `num1` to change the value
#    at index 0 in our array?
# 3. What could we do instead of line 9 (arr1[0] = 42) that would
#    have the same outcome on line 11?

#############
m = "foo"
n = "bar"
o = m
o += n
  
p m, n, o

# What will line 6 output and why?
  
m = "foo"
n = "bar"
o = m
o << n
  
p m, n, o

# Now, what will be output and why? 
# What's the difference?

## Bonus Questions ##
# 1. How many strings exist at the end of this code snippet?
#    What are they?
# 2. Are there any method invocations in this code? If so, what
#    are the callers, and what are the arguments?
# 3. Does commenting out the first 6 lines have any effect on
#    the last output, `p m, n, o`? Why or why not?

m = "foo"
n = m[0] # "f"
n.upcase!
p m
p n
m[0] = 'g'



SPOT Session 27.08.2024

=begin
How does count treat the block's return value?

=begin
The `Array#count` method returns an integer that is the number of times the block returns a truthy value for each array element passed in to the block.

The `Array#count` method uses the return value of the block to determine how many elements of the calling array are counted in the return value. If the block returns a truthy value for the current element, the count is increased by 1. If it returns a falsey value, nothing is added to the count.
=end

=end

How many times count will return a truthy value

number_of_short_words = ['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

p number_of_short_words

short_words = ['ant', 'bat', 'caterpillar'].select do |str|
  str.length < 4
end

count = 0
['ant', 'bat', 'caterpillar'].each do |word|
  count += 1 if word.length < 4
end
p count

## Session 02.09.2024

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


# Explain the following code, and identify the output.
# Is this code running as expected?

def bad_math(num)
  if num = 42
    puts 'It\'s 42'
  else
    puts 'It\'s not 42'
  end
end

bad_math(42)

## Bonus Questions ##
# 1. What happens if we pass a falsy value into `bad_math`?
# 2. What does an assignment evaluate to?
# 3. If this code runs without error, what does that mean about `num = 42`


# Explain the following code, and identify the output.
# Is this code running as expected?

# What will this code output and why?
def random_method(value)
  "Truthy value!" unless value
end

if random_method(true)
  new_value = "The if branch ran"
else
  new_value = "The else branch ran"
end

p new_value
  
## Bonuse Questions ##
# 1. What are the possible return values for `random_method`?
# 2. What would change if instead of passing `true` into
#    `random_method`, we passed in an empty array?
# 3. How would this problem change if we replaced the body of
#    `random_method` with `value unless value`?


## Unless eexample

# if value # => expression 
# # value = true    # => `if value` evaluates to true
# # value = 2       # => `if value` evaluates to true
# # value = false   # => `if value` evaluates to false
# # value = nil        # => `if value` evaluates to false

# unless value # => expression
# value = true    # => false
# value = 2       # => false
# value = false   # => true
# value = nil     # => true

# Evaluate to true unless this value is true or truthy
# Evalutate to false if this value is true or truthy

# Unless the lights are already on, turn them on
# If the lights are off, turn them on

if true
unless !true

def turn_on_lights?(lights_on)
  lights_on == false
end

lights_on = false # lights are off
p turn_on_lights?(lights_on) # yes /true

lights_on = true # lights are on
p turn_on_lights?(lights_on) # no /false


## 
def print
  puts "Hi"
end

a = 1 && print() # nil
b = 0 || 3 # 0

result = if a > b
           a
         else
           b
         end

puts result

## Session 05.09.2024

CEAO
comparison
equality
and
or

# What will be the output of the following code? Why?
def foo
  p "foo was called"
end

def bar
  puts "bar was called"
end

result = foo && bar

## Bonus Questions ##
# 1. What does `result` reference at the end of this snippet?
# 2. What happens if we change both methods to use `p` instead
#    of `puts`?
# 3. What could we do if we wanted `result` to reference a *boolean*
#    to indicate whether both methods have truthy return values?