# Truthiness
# Ex 1
def is_truthy?
  puts "true"
end

def not_truthy?
  false
end

result = is_truthy? || not_truthy?

unless result
  puts "It's falsy"
else
  puts "It's truthy"
end

# Ex2
def greet(name)
  puts "Hello, #{name}!"
end

name = nil
greet(name || "Guest")

# Object Passing
# Ex1
def fix(value)
  value[1] = 'x'
  value
end
s = 'abc'
t = fix(s)

p t
p s

# Constants
# Ex1
def create_constant
  MY_CONSTANT = 42
end

create_constant
puts MY_CONSTANT

#

my_hash = { a: "ant", b: "bear", c: "cat" }

my_hash.each_with_object({}) do |(key, value), hash|
  hash[value] = key
  p hash.object_id
end

p my_hash.object_id