# using the same array from #2, use the select method to extract all odd numbers into a new array.
my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

odds = my_array.select do |number|
  number.odd?
end

odds2 = my_array.select { |number| number % 2 != 0 }

p odds
p odds2