=begin
Use the modulo operator, division, or a combination of both to take a 4 digit number and find the digit in the: 1) thousands place 2) hundreds place 3) tens place 4) ones place
=end

def digits(num)
  num = num.to_s.chars.reverse
  result = ''
  num.each_index do |idx|
    result += "#{digit_2_position(idx)} place is #{num[idx]}\n"
  end
  result
end

def digit_2_position(digit)
  case digit
  when 0 then 'ones'
  when 1 then 'tens'
  when 2 then 'hundreds'
  when 3 then 'thousands'
  when 4 then 'ten thousands'
  when 5 then 'hundred thousands'
  when 6 then 'millions'
  when 7 then 'ten millions'
  when 8 then 'hundred millions'
  when 9 then 'billions'
  end
end

puts digits(2024)

=begin
Code Explanation

On line 29, the `digits` method is invoked and gets passed the Integer Object value `2024`.

From line 5-12 the `digits` method is defined. The Integer Object value `2024` is bound to the method parameter `num`.

On line 6 the `reverse`` method is invoked on the returned value of the method invocation `chars` that is called on the returned value of the `to_s` method invocation of the Integer Object referenced by the method local variable `num`. The returned value is an array of characters is reverse order `["4", "2", "0", "2"]` that is reassigned to the variable `num`.

On line 7 the `result` variable is initialized with an empty string object.

On line 8, the `each_index` method is invoked on the array `num` and passed a `do..end` block as an argument. On each iteration, each index is passed into the block and is bound to block parameter `idx`.

On line 9, the method `digit_2_position` is invoked and gets passed the value referenced by the block argument `idx`.

From line 14 to 27, the method `digit_2_position` is defined. The argument `idx` is bound to the method parameter `digit`. From line 15 to 26 a case statement is defined. The result value of the `case` expression for the value referenced by the method local variable `digit`, in this case the integer object 4, is evaluated and the value String object 'ones' is returned to the invocation of the `digits` method. The iteration continues until all elements of the array are looped over.

Back to line 9 of the `digits` method, the returned value "ones" is interpolated in the String object value "#{digit_2_position(idx)}. The expression #{num[idx]} is evaluated and returns the first element of the array num. The resulting String object is "ones place is 4" with carriage return, which is then concatenated and reassigned to the String value object referenced by variable `result`. The loop continues until all array elements are looped over. On line 11, the result variable is returned, which references a new string object.

Back to line 29, the `puts` method is invoked and gets passed the return value of the digits method invocation as an argument.

The output is:

ones place is 4
tens place is 2
hundreds place is 0
thousands place is 2

The return value is:

"ones place is 4\ntens place is 2\nhundreds place is 0\nthousands place is 2\n"

=end