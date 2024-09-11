# What will this code output and why?
greetings = ['hello', 'howdy']
names = ['homer', 'marge']

def random_greeting(name)
  name = name.capitalize
  greeting = greetings.sample
  p greeting + ' ' + name
end

name = names.sample
random_greeting(name)

## Bonus Questions ##
# 1. How many `name` variables exist in this code? How are they related?
# 2. Fix this code.
# 3. After fixing the code, update it so that we don't ever repeat names or greetings.
#    How should we handle running out of names/greetings?

