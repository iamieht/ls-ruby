# Using a while loop, print 5 random numbers between 0 and 99 (inclusive). 
count = 1
while count <= 5
  puts rand(100)
  count += 1
end