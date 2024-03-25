# only print out values greater than 5.
my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

greater_than_5 = my_array.select do |element|
  element > 5
end

puts greater_than_5

my_array.each { |element| puts element if element > 5 }
my_array.each do |element|
  if element > 5
    puts element
  end
end