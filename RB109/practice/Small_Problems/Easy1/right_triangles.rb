=begin
Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.
=end
def triangle(n)
  n.times do |idx|
    stars = idx + 1
    spaces = n - 1
    n -= 1

    puts "#{ ' ' * spaces }#{ '*' * stars }"
  end
end


# def trianglev2(num, orientation="up", angle="right")
#   if orientation == "up"
#     case angle
#     when 'right':
#       num.times do |idx|
#         stars = idx + 1
#         spaces = n - 1
#         num -= 1

#         puts "#{ ' ' * spaces }#{ '*' * stars }"
#       end
#     when 'left':
#       num.times do |idx|

# end



# Examples
triangle(5)
#     *
#    **
#   ***
#  ****
# *****

triangle(9)
#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********