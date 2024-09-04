=begin
Create a simple mad-lib program that prompts for a noun, a verb, an adjective, and an adverb and injects those into a story that you create.
=end
def madlib()
  print "Enter a noun: "
  noun = gets.chomp
  print "Enter a verb: "
  verb = gets.chomp
  print "Enter an adjective: "
  adjective = gets.chomp
  print "Enter an adverb: "
  adverb = gets.chomp

  puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
end

madlib

# Example
# Enter a noun: dog
# Enter a verb: walk
# Enter an adjective: blue
# Enter an adverb: quickly

# Do you walk your blue dog quickly? That's hilarious!