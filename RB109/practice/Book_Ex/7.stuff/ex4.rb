=begin
use the select method to extract all odd numbers into a new array.
=end

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

odds = arr.select { |num| num.odd? }
p odds