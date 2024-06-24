# How could the following method be simplified without changing its return value?

def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

def color_valid2(color)
  color == "blue" || color == "green"
end

puts color_valid("blue")
puts color_valid("red")

puts color_valid2("blue")
puts color_valid2("red")
