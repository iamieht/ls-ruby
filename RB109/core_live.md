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