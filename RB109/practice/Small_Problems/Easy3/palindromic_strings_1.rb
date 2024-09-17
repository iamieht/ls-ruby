=begin
Palindromic Strings (Part 1)
Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. A palindrome reads the same forward and backward. For this exercise, case matters as does punctuation and spaces.
=end
def palindrome?(param)
  # if param.instance_of?(String)
  #   param = param.chars
  # end
  # param.to_a == param.to_a.reverse
  param == param.reverse
end


# Examples
puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true
puts palindrome?(['a', 'b', 'a']) == true