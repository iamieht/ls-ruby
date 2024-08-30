=begin
Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.
=end
def stringy(length)
  str = ''

  length.times do
    str.end_with?("1") ? str += "0" : str += "1"
  end

  str
end

# Examples
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# Further Exploration
def stringy2(length, first_char = 1)
  str = ''
  first = first_char.to_s
  second = first_char == 1 ? '0' : '1'

  length.times do
    str.end_with?(first) ? str += second : str += first
  end

  str
end


# Examples
puts stringy2(6) == '101010'
puts stringy2(6, 0) == '010101'
puts stringy2(9, 0) == '010101010'
puts stringy2(4, 0) == '0101'
puts stringy2(7, 1) == '1010101'
