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