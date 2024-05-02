# Right Triangles

## Problem (P)
# Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.

# - Inputs:
#   - n: positive integer
# - Outputs:
#   - String representing a right triangle whose sides have n stars
# - Explicit Rules:
#   - The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.
# - Implicit Rules:

## Examples/Test Cases (E)
# triangle(5)
#     *
#    **
#   ***
#  ****
# *****

# triangle(9)
#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********
## Data Structures
# - Integer
# - String

## Algorithm
# - Define a method triangle with a single parameter n of type integer
#   - loop n times
#   - Add one to the idx and multiply by "*" 
#   - Output the previous line

## Code
def triangle(num)
  num.times do |idx|
    puts "#{'*' * (idx + 1)}".rjust(num)
  end
end

triangle(5)
triangle(9)

# Further Exploration
# Try modifying your solution so it prints the triangle upside down from its current orientation. Try modifying your solution again so that you can display the triangle with the right angle at any corner of the grid.