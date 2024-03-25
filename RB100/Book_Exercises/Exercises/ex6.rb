# Get rid of duplicates without specifically removing any one value.
my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
my_array.push(11)
my_array.unshift(0)
my_array.delete(11)
my_array.push(3)

my_array.uniq!
puts my_array