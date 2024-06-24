def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}" # pumpkinsrutabaga
puts "My array looks like this now: #{my_array}"    # pumpkins

# We are still passing in the same two string and array arguments, but the results are the opposite, because our method does the "same thing" to each, but in a different way than before. That is, in both cases, the method attempts to change the string from "pumpkins" to "pumpkinsrutabaga" and add "rutabaga" to the array.

# Despite the similarity of the results inside the method definition, the results outside the method definition are the opposite.

# As before, the explanation is all about what Ruby does with a variable when we change the object it points to. Does it create a new object? Or is it able to just modify the existing object? In this case, our literal ['pumpkins', 'rutabaga'] array is a new object, and we are assigning it to the local variable an_array_param.

