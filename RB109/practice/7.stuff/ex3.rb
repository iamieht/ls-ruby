=begin
Same as ex2, but only print out values greater than 5.
=end

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each { |num| puts num if num > 5 }