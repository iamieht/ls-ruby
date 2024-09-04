=begin
Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters.
=end
def center_of(str)
  str.size.odd? ? str.slice(str.size / 2) : str.slice((str.size / 2 - 1), 2)
end


# Examples
puts center_of('I love Ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'