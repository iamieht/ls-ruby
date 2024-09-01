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
  horizontal_line = "+#{'-' * (column_width + 2)}+"
  empty_line = "|#{' ' * (column_width + 2)}|"

  iterations = (msg.size / column_width.to_f).ceil

  puts horizontal_line
  puts empty_line

  idx = 0
  iterations.times do
    line_space = column_width - (msg[idx, column_width].size.abs)
    puts "| #{msg[idx, column_width]}#{' ' * line_space} |"
    idx += column_width
  end

  puts empty_line
  puts horizontal_line

end

bannerizer('To boldly go where no one has gone before. To boldly go where no one has gone before. To boldly go where no one has gone before. To boldly go where no one has gone before. To boldly go where no one has gone before.')
puts " "
bannerizer("Our deepest fear is not that we are inadequate. Our deepest fear is that we are powerful beyond measure. It is our light, not our darkness that most frightens us. We ask ourselves, 'Who am I to be brilliant, gorgeous, talented, fabulous?' Actually, who are you not to be? You are a child of God. Your playing small does not serve the world. There is nothing enlightened about shrinking so that other people won't feel insecure around you. We are all meant to shine, as children do. We were born to make manifest the glory of God that is within us. It's not just in some of us; it's in everyone. And as we let our own light shine, we unconsciously give other people permission to do the same. As we are liberated from our own fear, our presence automatically liberates others.")