# The Ruby Array class has several methods for removing items from the array. Two of them have very similar names. Let's see how they differ:
numbers = [1, 2, 3, 4, 5]

# What do the following method calls do (assume we reset numbers to the original array between method calls)?

numbers.delete_at(1) # => deletes the element at index 1. Number 2 is removed
numbers.delete(1) # => deletes the number 1 from the numbers object Array

# Both methods modify in place, meaning mutate the Array