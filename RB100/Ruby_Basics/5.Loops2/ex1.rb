# Write a loop that prints numbers 1-5 and whether the number is even or odd.
count = 1

loop do
  puts count.odd? ? "#{count} is odd!" : "#{count} is even!"
  count += 1
  break if count > 5
end