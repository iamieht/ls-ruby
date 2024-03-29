# What will the following code print and why?
a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a

# Code prints 7
# The method puts is invoked passing the local variable a as an argument, which references the integer value 7.

# Official explanation:
# Reassignment, including assignment operators like +=, does not mutate a variable; instead, it binds the variable to a new object. That is, += sets the variable to point to a different object. Since line 4 binds b to a new object, the object pointed to by a remains unchanged. Thus, a is still equal to 7 at the time of the puts.

# Another way to look at this is that numbers in Ruby are immutable. Thus, there is no way for my_value to mutate the value referenced by b, which means that my_value does not (and can not) change the object referenced by a (7).