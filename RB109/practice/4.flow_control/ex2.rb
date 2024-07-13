=begin
Write a method that takes a string as an argument. The method should return a new, all-caps version of the string, only if the string is longer than 10 characters.
=end

def all_caps10(string)
  string.size > 10 ? string.upcase : string
end

string = "hello world"
puts all_caps10(string)
puts string
puts all_caps10("Ivan")