# Optional Arguments Redux
# Assume you have the following code:
require 'date'

puts Date.civil               #=> -4712-01-01
puts Date.civil(2016)         #=>2016-01-01
puts Date.civil(2016, 5)      #=>2016-05-01
puts Date.civil(2016, 5, 13)  #=>2016-05-13

# What will each of the 4 puts statements print?
