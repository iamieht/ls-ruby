=begin
Get rid of duplicates without specifically removing any one value.
=end

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.push(11)
arr.unshift(0)
arr.pop
arr << 3

arr.uniq!

p arr