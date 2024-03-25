# Get rid of 11. And append a 3.
my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
my_array.push(11)
my_array.unshift(0)
my_array.delete(11)
my_array.push(3)
puts my_array
