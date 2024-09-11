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

=begin
# What will this code output and why?
The code will raise a NameError exception because the initialization of the `greeting` variable cannot be done as the `greetings` Array is not accesible from within the method's body.

# How many `name` variables exist in this code? How are they related?
2 `name` variables exist. One local variable initialized in the main scope and one method local variable. Both variables reference the same object when the random_greeting is invoked and gets passed in the object referenced by local variable `name` and then bound to the method local variable `name`.

# Fix this code
greetings = ['hello', 'howdy']
names = ['homer', 'marge']

def random_greeting(name, greetings)
  name = name.capitalize
  greeting = greetings.sample
  p greeting + ' ' + name
end

name = names.sample
random_greeting(name, greetings)

# After fixing the code, update it so that we don't ever repeat names or greetings.

greetings = ['hello', 'howdy']
names = ['homer', 'marge']

def random_greeting(name, greetings)
  return if name.nil? || greetings.nil?

  name = name.capitalize
  greeting = greetings.delete(greetings.sample)
  p greeting + ' ' + name
end

name = names.delete(names.sample)
random_greeting(name, greetings)

name = names.delete(names.sample)
random_greeting(name, greetings)

name = names.delete(names.sample)
random_greeting(name, greetings)


=end

