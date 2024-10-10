# Ex1
def example(str)
  i = 3
  loop do
    puts str
    i -= 1
    break if i == 0
  end
end

example('hello')


# Ex2
animal = "dog"

loop do |_|
  animal = "cat"
  var = "ball"
  break
end

puts animal
puts var

# Ex3
x = "outer"
2.times do
  x = "inner"
  2.times do
    puts x
  end
end
puts x

# Ex4
MAX_VALUE = 100

[1, 2, 3].each do |num|
  MAX_VALUE = 200 if num == 2
end

puts MAX_VALUE

# Ex5
result = [1, 2, 3, 4, 5].map do |num|
  num * 2 if num.even?
end
p result