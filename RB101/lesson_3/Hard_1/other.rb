
def greeting
	puts "Hello"
end

misc_info = "A string"

if misc_info
  first_conditional_clause = "value"
else
  second_conditional_clause = "value"
end

p misc_info
p first_conditional_clause
p second_conditional_clause


# What will be output and why?

arg = "Goldfish"

def fish(param)
  param
end

pet_arr = ["Cat", "Dog", fish(arg)]

fish(arg) << "es"

p pet_arr # ["Cat", "Dog", "Goldfishes"]


def fish
  "Goldfish"
end

new_fish = fish
# pet_arr = ["Cat", "Dog", fish]
pet_arr = ["Cat", "Dog", new_fish]
# p pet_arr[2].object_id

new_fish << "es"
# p new_var.object_id
p pet_arr
# p fish.object_id
# p fish.object_id