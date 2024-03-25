# Write a program that checks if the sequence of characters "lab" exists in the following strings. If it does exist, print out the word.

def has_lab?(word)
  if word =~ /lab/
    word
  else
    "It doesn't"
  end
end

puts has_lab?("laboratory")
puts has_lab?("experiment")
puts has_lab?("Pans Labyrinth")
puts has_lab?("elaborate")
puts has_lab?("polar bear")