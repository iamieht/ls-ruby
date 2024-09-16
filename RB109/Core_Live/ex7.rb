=begin
Session 16.09.2024

# We tried to write a function that capitalizes the strings in a sentence
# and adds an exclamation point. Why didn't it work?
def exclaim(array)
  array.each do |sentence|
    sentence[0].upcase!
    sentence += '!'
  end

  p array # what will this output?
end

actions = ['twist it', 'spin it', 'bop it']
exclaim(actions)

## Bonus Questions ##
# 1. How do we explain a mutating method, `upcase!` not showing any change?
# 2. How can we fix this code?
# 3. How could we make a similar function with 'pass-by-value' behavior?


=end