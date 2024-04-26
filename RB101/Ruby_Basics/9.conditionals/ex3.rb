# Unpredictable Weather (Part 3)
# Write an if statement that prints "The sun is so bright!" if sun equals visible. Also, write an unless statement that prints "The clouds are blocking the sun!" unless sun equals visible.

sun = ['visible', 'hidden'].sample

puts "The sun is so bright!" if sun == 'visible'
puts "The clouds are blocking the sun!" unless sun == 'visible'

# By combining the use of if and unless in one solution, we're able to produce the same output as the previous two exercises.

# This solution gives us an opportunity to take advantage of how expressive Ruby is. We can call #puts and simply append an if or unless condition to form a shorter, more readable expression. Such conditions, when added to the end of a statement like this, are called modifiers.