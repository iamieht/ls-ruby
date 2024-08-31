=begin
Write a method that will take a short line of text, and print it within a box.
=end
def print_in_box(msg)
  horizontal_line = "+-#{'-' * msg.length}-+"
  empty_line = "| #{' ' * msg.length} |"
  puts horizontal_line
  puts empty_line
  puts "| #{msg} |"
  puts empty_line
  puts horizontal_line
end


# Examples
print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+