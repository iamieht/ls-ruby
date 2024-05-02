# Bannerizer

## Problem (P)
# Write a method that will take a short line of text, and print it within a box.

# - Inputs:
#   - String
# - Outputs:
#   - a String
# - Explicit Rules:
#   - a String must be printed within a box
# - Implicit Rules:
#   - Start of horizontal lines of the box is a "+"
#   - Chars after the "+" are "-"
#   - Length of the box == lenght of the String + 1 on each start/end
#   - Vertical characters of the box are "|"
#   - Empty String prints the box


## Examples/Test Cases (E)
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

## Data Structures
# - Strings

## Algorithm
# - Define a method print_in_box with a single parameter of type String
#   - Initialize a variable length = str.size
#   - Initialize a variable horizontal_line = "+"#{length * '-'}"+"
#   - Initialize a variable vertical_line = "|"
#   - Initialize a variable space = " "
#   - Output horizontal line
#   - Output vertical line + #{length * " "} + vertical line
#   - Output vertical line + str + vertical line
#   - Output vertical line + #{length * " "} + vertical line
#   - Output Output horizontal line

## Code

def print_in_box(str)
  length = str.size
  horizontal_line = "+#{'-' * (length + 2)}+"
  vertical_line = "|"
  space = " "

  puts horizontal_line
  puts vertical_line + "#{space * (length + 2)}" + vertical_line
  puts vertical_line + space + str + space + vertical_line
  puts vertical_line + "#{space * (length + 2)}" + vertical_line
  puts horizontal_line
end

print_in_box('')
print_in_box('To boldly go where no one has gone before.')

# Further Exploration
# Modify this method so it will truncate the message if it will be too wide to fit inside a standard terminal window (80 columns, including the sides of the box). For a real challenge, try word wrapping very long messages so they appear on multiple lines, but still within a box.


