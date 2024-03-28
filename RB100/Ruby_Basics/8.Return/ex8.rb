# What will the following code print? Why?

def count_sheep
  5.times do |sheep|
    puts sheep
  end
  10
end

puts count_sheep # => 0 1 2 3 4 10

# This exercise continues the previous exercise, except with one variation: Integer#times is no longer the last line in count_sheep. #times still returns the initial integer, but this time nothing is done with the return value. Instead, 10 is the implicit return value of count_sheep because it's the last line evaluated.