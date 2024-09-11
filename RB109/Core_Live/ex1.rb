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