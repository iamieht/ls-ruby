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
# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

# print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+

# Further Exploration

def bannerizer(msg)
  column_width = 70
  horizontal_line = "+#{'-' * column_width}+"
  empty_line = "|#{' ' * column_width}|"

  iterations = (msg.size / column_width.to_f).round

  puts horizontal_line
  puts empty_line

  idx = 0
  iterations.times do
    puts "| #{msg[idx, column_width - 2]} |"
    idx += column_width
  end

  puts empty_line
  puts horizontal_line

end

bannerizer('To boldly go where no one has gone before. To boldly go where no one has gone before. To boldly go where no one has gone before. To boldly go where no one has gone before.')