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

def draw_triangle_up(num, angle)
  if angle == 'right'
    num.times do |i|
      stars = i + 1
      spaces = num - 1
      num -= 1

      puts "#{ ' ' * spaces }#{ '*' * stars }"
    end
  elsif angle == 'left'
    num.times do |i|
      stars = i + 1
      spaces = num - 1
      num -= 1

      puts "#{ '*' * stars }#{ ' ' * spaces }"
    end
  else
    puts "Incorrect Angle"
  end
end

def draw_triangle_down(num, angle)
  if angle == 'right'
    num.downto(1) do |i|
      stars = i
      spaces = num - i

      puts "#{ ' ' * spaces }#{ '*' * stars }"
    end
  elsif angle == 'left'
    num.downto(1) do |i|
      stars = i
      spaces = num - i

      puts "#{ '*' * stars }#{ ' ' * spaces }"
    end
  else
    puts "Incorrect Angle"
  end
end

def triangle_v2(num, angle, orientation="up")
  if orientation == "up"
    draw_triangle_up(num, angle)
  elsif orientation == "down"
    draw_triangle_down(num, angle)
  else
    puts "Incorrect Orientation"
  end
end

## Further Exploration - Bob Rodes solution

def triangle(size, right_angle)
  case right_angle
  when 'top_left'
    size.downto(1) { |n| puts ('*' * n) }
  when 'top_right'
    size.downto(1) { |n| puts ('*' * n).rjust(size, ' ') }
  when 'bottom_left'
    1.upto(size) { |n| puts ('*' * n) }
  when 'bottom_right'
    1.upto(size) { |n| puts ('*' * n).rjust(size, ' ') }
  end
end


# Examples
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

# draw_triangle(5, "right")
# draw_triangle(5, "left")

# draw_triangle_down(5, 'right')
# draw_triangle_down(5, 'left')

# triangle_v2(5, "right", "up")
# triangle_v2(5, "left", "up")
# triangle_v2(5, "right", "down")
# triangle_v2(5, "left", "down")