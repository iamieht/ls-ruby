# What do you expect to happen when the greeting variable is referenced in the last line of the code below?

if false
  greeting = "hello world"
end

p greeting

# `nil` is output to the terminal as the assignment on line 4 is never executed, so the variable is initialized implicitely with nil.

# greeting is nil here, and no "undefined method or local variable" exception is thrown. Typically, when you reference an uninitialized variable, Ruby will raise an exception, stating that it’s undefined. However, when you initialize a local variable within an if clause, even if that if clause doesn’t get executed, the local variable is initialized to nil.