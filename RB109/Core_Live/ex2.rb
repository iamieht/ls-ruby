## Session 29.08.2024

 # Predict the output of this snippet and explain why.
 num1 = 1
 arr1 = [num1, 2, 3]

 num1 = 42

 p arr1 # What is output by this line?

 arr1[0] = 42

 p arr1 # What is output by this line?

 ## Bonus Questions ##
 # 1. Does `arr1` contain the variable `num1` as an element?
 # 2. Is there anything we can do to `num1` to change the value
 #    at index 0 in our array?
 # 3. What could we do instead of line 9 (arr1[0] = 42) that would
 #    have the same outcome on line 11?

 #############
 m = "foo"
 n = "bar"
 o = m
 o += n

 p m, n, o

 # What will line 6 output and why?

 m = "foo"
 n = "bar"
 o = m
 o << n

 p m, n, o

 # Now, what will be output and why?
 # What's the difference?

 ## Bonus Questions ##
 # 1. How many strings exist at the end of this code snippet?
 #    What are they?
 # 2. Are there any method invocations in this code? If so, what
 #    are the callers, and what are the arguments?
 # 3. Does commenting out the first 6 lines have any effect on
 #    the last output, `p m, n, o`? Why or why not?

 m = "foo"
 n = m[0] # "f"
 n.upcase!
 p m
 p n
 m[0] = 'g'