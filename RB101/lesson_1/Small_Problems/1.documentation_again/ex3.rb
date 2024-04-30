# Default Arguments in the Middle
# Consider the following method and a call to that method:
def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

# [4, 5, 3, 6]

# In this exercise, 4, 5 and 6 are assigned to the positional arguments a, b and d. Note that 5 overrides the default value for b, but c is not set to any of the listed values. c, instead, is assigned its default value, 3. Thus, when the results are printed, we see the results shown in our solution.