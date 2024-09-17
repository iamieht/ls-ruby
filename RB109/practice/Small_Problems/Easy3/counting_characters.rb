=begin
Counting the Number of Characters

Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as a character.
=end

print "Please write a word or multiple words: "
str = gets.chomp
words = str.chars
words.delete(' ')

puts "There are #{words.size} characters in '#{str}'"