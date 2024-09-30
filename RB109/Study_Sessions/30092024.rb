def greet
  return "Hello"

  puts "Hello!"
end

response = greet == "Hello" ? "Hi" : "Bye"
puts response


num = 25

5.times do |x|
  p x
  5.times do |num|
    p num
    if num == 25
      puts "{x} * #{num} == 25"
    end
  end
end