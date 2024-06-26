# Tricky Number
# What will the following code print? Why?

def tricky_number
  if true
    number = 1
  else
    2
  end
end

puts tricky_number #=> 1

# Trying to determine the return value of tricky_number can be somewhat confusing, so let's break it down. We're printing the return value of tricky_number by prepending #puts when we invoke the method. As we look at the method, we can see the if/else statement. It has a conditional of true which means that the if clause will be evaluated every time. The assignment to number is actually quite useless because we don't use it anywhere else. However, variable assignment still returns the value that was assigned to the variable. It works the same as if the assignment wasn't even there.

# Since we know that the else clause was ignored, we can safely determine that the return value will be 1 because it's the only evaluated value in the if clause.