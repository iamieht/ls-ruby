# What will the following code print, and why?
a = 7

def my_value(b)
  b = a + a
end

my_value(a)
puts a

# `my_value': undefined local variable or method `a' for main:Object (NameError)
# Even though a is defined before my_value is defined, it is not visible inside my_value. Method definitions are self contained with respect to local variables. Local variables initialized inside the method definition are not visible outside the method definition, and local variables initialized outside the method definition are not visible inside the method definition.

# Note, however, that local variables will be visible (via closures) inside blocks, procs, and lambdas.