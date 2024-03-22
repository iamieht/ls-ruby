# What does the each method in the following program return after it is finished executing?
x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end

# each will always return the original array that it was called on.
# => [1, 2, 3, 4, 5]