# Ex1
def example(str)
  i = 3
  loop do
    puts str
    i -= 1
    break if i == 0
  end
end

example('hello')

=begin
This code outputs the string `hello` 3 times on separate lines and returns `nil`

On line 10, we call the `example` method with the string object `hello` as an argument.

On lines 1-8, we define the `example` method with a single parameter `str`, which is bound to `hello`.

On line 2, the method local variable `i` is initialized and references the Integer object with value `3`.

On line 3, we call the `loop` method with a `do..end` block as an argument.

On line 4, we call the `puts` method with `str` as an argument, outputting `hello`.

On line 5, we call the `-` method on the object referenced by `i` and we pass `1` as an argument. This method will decrement the value of `i` by `1` in each iteration.

On line 6, the expression `if i == 0` is evaluated and once it evaluates as true, it will stop the `loop` execution and will `break` out of it.

The `loop` is executed 3 times, outputting the string `hello` 3 times and returning `nil`.

This code demonstrates the concept of object passing strategy, in which Ruby behaves as if "Pass-by-value" as the object passed in is not mutated. It also demonstrates the concept of local variable scope in relation to blocks after a method invocation and how local variables initialized in an outer scope can be accesed and modified inside the block.

=end

# Sofia
# On line 10, we invoke the `example` method and pass in the string `"hello"` as an argument.

# On line 1, we define the `example` method which has one parameter, `str` . When we pass our argument, `"hello"` to our method, it gets bound to the method’s parameter, `str` .

# Within the method on line 2, we initialize a local variable `i` which references the integer object `3`.

# On line 3, we invoke the `loop` method, which takes a block as an argument. Within the block on line 4, we invoke the `puts` method and pass the object that `str` references as an argument.

# On line 5, we reassign `i` to reference the return value of invoking the `-` method on `i` and passing in the integer `1` as an argument. Therefore, we’re decrementing `i` by `1` for each iteration of the loop.

# On line 6 we use the keyword `break` along with a conditional statement `if` to exit the loop if the expression `i == 0` evaluates to true. So we break out of the loop if `i` equals the integer `0`.

# The output of this code will be the string `"hello"` on three separate lines because of the call to `puts`. Because this loop executes three times, that’s how many times `"hello"` is output.

# The return value of this code is `nil` because the loop method always returns `nil`.

# This example demonstrates the concept of method definitions as well as the concept of passing and using blocks within methods.


# Ex2
animal = "dog"

loop do |_|
  animal = "cat"
  var = "ball"
  break
end

puts animal
puts var

=begin
This code outputs `cat` and raises a NameError exception on line 10

On line 1, the local variable `animal` is initialized and references a string object with value `dog`.

On line 3, the `loop` methos is invoked and gets passed a `do..end` block as an argument.

On line 4, `animal` is reassigned to the string `ball` and on line 5, the `break` statement stops the loop execution.

On line 7, the `puts` method is called with `animal` as an argument, outputting `cat`.

On line 8, the `puts` method is called with `var` as an argument, raising a NameError exception as the local variable `var` is not accesible from the outer scope as it was initialized within a block.

This code demonstrates the concept of local variable scope in relation to blocks after a method invocation.
=end

# Sofia
# On line 1 we initialize a local variable `animal` which references the string object `"dog"`.

# On line 3 we invoke the `loop` method, which accepts a block as a parameter. Within the block, we use an underscore parameter to show that it’s intentionally not being used in this block.

# On line 4, we reassign `animal` to point to a new string, `"cat"`.

# On line 5, we initialize the local variable `var` which references the string `"ball"` .

# On line 6 we employ the keyword `break` to exit the loop after one iteration.

# On line 9, we invoke the `puts` method and pass the object referenced by `animal` as an argument.

# On line 10, we invoke the `puts` method and pass the object referenced by `var` as an argument.

# The first output of this code will be the string `"cat"` . This is because we reassign `animal` to point to a new string, `"cat"` within the block, and this is possible because within blocks, inner scope can access outer scope.

# Next in our output we will see that an error is thrown, because with blocks, outer scope cannot access inner scope. Therefore, when we try to `puts` `var` , Ruby cannot access `var` because it was initialized within the inner scope of the block and is therefore not available outside of the block.

# The return value of this code is `nil` because `puts` always returns `nil`. The return value of the `loop` method is also `nil`.

# This example demonstrates the concept of local variable scoping rules pertaining to blocks following method invocation, where inner scope can access outer scope variables, but outer scope cannot access inner scope variables.

# Ex3
x = "outer"
2.times do
  x = "inner"
  2.times do
    puts x
  end
end
puts x

=begin
This code outputs the string `inner` on separate lines 5 times.

On line 1, the local variable `x` is initialized and references a string object with value `outer`.

On line 2, we call the `times` method on the Integer object `2` and we pass a `do..end` block as an argument.

On line 3, `x` is reassigned to the string `inner`

On line 4, we call the `times` method on `2` and we pass a `do..end` block as an argument.

On line 5, we call the `puts` method with `x` as an argument, outputting `inner` 2 times.

As the `times` method is called on `2` on line 2, the string `inner` is output another 2 times, for a total of 4 times.

On line 8, we call the `puts` method with `x` as an argument, outputting `inner`.

This code demonstrates the concept of local variable scope in relation to blocks after a method invocation, in which the variable `i` is initialized in an outer scope and reassigned inside the block.
=end

# Sofia
# On line 1 we initialize the local variable `x` which references the string object `"outer"`.

# From lines 2-7 we have nested blocks that are arguments to two nested `times` method invocations.

# On line 2 we invoke the `times` method on the integer `2`. The `times` method takes a block as an argument. Within the block on line 3, we reassign `x` to reference a new string, `"inner"`

# On line 4, we invoke the `times` method on the integer `2`. The `times` method takes a block as an argument. Within this bock on line 5, we invoke the `puts` method and pass the object that `x` references as an argument.

# Finally, on line 8 we invoke the `puts` method and pass the object that `x` references as an argument.

# This code will output the string `"inner"` five times on five separate lines. The first four `"inner"` strings are output as a result of the two `times` method invocations and their blocks. In the first block, `x` is reassigned to `"inner"` because inner scope can access outer scope with blocks. In the second block, we invoke `puts x` twice. Then this inner block gets executed twice because it’s nested within the first `times` method invocation and its block, resulting in four separate `"inner"` strings being output. The fifth `"inner"` string is a result of the last line of code, which demonstrates that although we reassigned `x` within the block’s inner scope, `x` was initialized in the outer scope, so the new string that `x` points to is available to us outside of the block.

# The `times` method calls will return `2` because this method always returns the integer that it was called on. The `puts x` will return `nil` because `puts` always returns nil.

# This example demonstrates the concept of local variable scoping rules pertaining to blocks following method invocation. It also demonstrates the concept of nested blocks.

# Ex4
MAX_VALUE = 100

[1, 2, 3].each do |num|
  MAX_VALUE = 200 if num == 2
end

puts MAX_VALUE

=begin
This code outputs 200 and raises some warning as the constant `MAX_VALUE` is reassigned.

On line 1, the constant `MAX_VALUE` is initialized and references an Integer object with value `100`.

On line 3, the `each` method is called on an Array object with elements `[1, 2, 3]` and gets passed a `do..end` block as an argument.

Within the block, the block parameter `num` is assigned the yield values returned by the `each` method. In each iteration `num` is assigned to `1`, `2` and finally `3`.

On line 4, the expression `if num == 2` is evaluated. In the second iteration, `num` is assigned the value `2`, so the expression evaluates as true and the constant `MAX_VALUE` is reassigned to `200`.

On line 7, we call the `puts` method with the object referenced by `MAX_VALUE` as an argument, outputting `200`.

This code snippet demonstrates the concept of scope of constants, in which they are acccesible inside a block (similar to local variables) and also the concept of local variable scope in relation to blocks after a method invocation.

Important to mention that the purpose of constants is to remain unchanged and any reassignment will raise a warning by the Ruby interpreter.
=end

# Sofia

# On line 1 we initialize a constant `MAX_VALUE` which references the integer object `100`.

# On line 3 we invoke the `each` method on an array object that contains the integers `1` `2` `3` . The `each` method takes a block as an argument. Within the block on line 3 we have a block parameter `|num|`, which is initialized as a block local variable.

# On line 4, we use a conditional `if` statement which will reassign `MAX_VALUE` and have it point to a new integer, `200` , if the expression `num == 2` evaluates to `true` . So, on the first iteration of the `each` method, `MAX_VALUE` will remain pointing to `100`, but on the second iteration, because `num == 2` evaluates to `true`, `MAX_VALUE` gets reassigned to point to `200` instead. Our constant remains pointing to `200` on our third iteration of the `each method`.

# Finally, on line 7 we invoke the `puts` method and pass the object that `MAX_VALUE` references as an argument.

# This code will output a warning because we reassigned our constant `MAX_VALUE` within the block, and constants are never supposed to change once they have been initialized. After this warning, we will see the output `200` because of this reassignment.

# The return value of the `puts` method is `nil` because `puts` always returns `nil`. The return value of the `each` method call is `[1, 2, 3` because `each` always returns the original array that it was called on.

# This example demonstrates the concept of constants, which have lexical scope, meaning they are accessible in the scope where they were defined, as well as inner scopes. They can be accessed from within blocks and method definitions, and can also be accessed from an outer scope if they were initialized within an inner scope. This example also demonstrates the fact that reassigning constants is bad practice and should be avoided.

# Ex5
result = [1, 2, 3, 4, 5].map do |num|
  num * 2 if num.even?
end
p result

=begin
This code outputs and return an Array object with 5 elements `[nil, 4, nil, 8, nil]`

On line 1, the local variable `result` is initialized and references the return value of the `map` method invocation on an array object with values `[1, 2, 3, 4, 5]`. The `map` method invocation gets passed a `do.end` block as an argument and each element of the array is bound to the block parameter `num` during each iteration, respectively.

On line 2, the expression `if num.even?` is evaluated for each element of the array and if evaluates as true, it returns the element * 2, otherwise returns `nil`, which is then appended to the new array object returned by the `map` method invocation.

On line 4, we call the `p` method with `result` as an argument, outputting and returning the a new Array object with 5 elements `[nil, 4, nil, 8, nil]`

This code snippet demonstrates the behavior of the `map` method invocation and how it returns a new array object with the elements of the return values from the block.

=end

# Sodia
# On line 1 we initialize the local variable `result` which references the return value of calling the `map` method on an array object with the integer objects `1` `2` `3` `4` `5` and passing a block as an argument to the `map` method invocation. Within the block, we have a block parameter `|num|` which is initialized as a block local variable.

# On line 2, we use a conditional `if` statement to call the `*` method on `num` and pass the integer `2` as an argument if the return value of calling the `even?` method on `num` is true. This means that we iterate through each number in our array and multiply the current number by `2` if that number is even. When the block condition (`num.even?`) is false, the block doesn't explicitly return a value, so it implicitly returns `nil`. This is why we see `nil` values in the resulting array for the odd numbers. Therefore, `result` is set to reference the return value of this `map` method call.

# Finally, on line 4, we invoke the `p` method and pass in `result` as an argument, which allows us to see the return value of this code as our output.

# `map` returns a new array, so for our output we should see the new array `[nil, 4, nil, 8, nil]`

# This example demonstrates the concept of iteration over an array using the `map` method and the concept of using method return values.