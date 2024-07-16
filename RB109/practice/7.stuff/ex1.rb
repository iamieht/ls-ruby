=begin
Write a program that checks if the sequence of characters "lab" exists in the following strings. If it does exist, print out the word.

"laboratory"
"experiment"
"Pans Labyrinth"
"elaborate"
"polar bear"
=end

def lab?(string)
  string.include?('lab')
end

puts lab?("laboratory")       #=> true
puts lab?("experiment")       #=> false
puts lab?("Pans Labyrinth")   #=> false
puts lab?("elaborate")        #=> true
puts lab?("polar bear")       #=> false