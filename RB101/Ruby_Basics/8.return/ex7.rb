# Counting Sheep (Part 1)
# What will the following code print? Why?

def count_sheep
  5.times do |sheep|
    puts sheep
  end
end

puts count_sheep # => 0,1,2,3,4,5

# We're using Integer#times within the count_sheep method to count from 0 to 4 (#times starts at 0). Therefore, it's no surprise that the output includes 0 through 4. What may be surprising, however, is the fact that the output includes 5. Where did that 5 come from? If you study #times in the Ruby docs, you'll know that after iterating 5 times, the block returns the initial integer. Which, in this case, is 5.

# We can use this knowledge combined with what we learned from the previous exercises to determine why 5 was printed. When looking at count_sheep we can see that the #times block is the only code in the method. This means it's also the last line in the method. Since #times returns the initial integer, we now know that the return value of count_sheep is 5.

# DN Wrote: The code will output the integers 0 through 5, inclusively, in sequence and on separate lines.

# On line 7, the defined method count_sheep is invoked. Within the method, the times method is called on the integer 5 and gets passed a do...end block as an argument. The times method will iterate the block 5 times, with each iteration number, starting at iteration 0, binding to the the block parameter sheep. Upon each iteration of the block, block local variable sheep gets passed as an argument to the puts method invocation, which outputs its value to the console. Because sheep references each iteration number and the block iterates 5 times, the integers 0 through 4 are output.

# After block execution, times will return its caller, which in this case is 5. Because this is the last line of the method, 5 will be returned from the method and output by invocation of the puts method on line 7.