# More Than One
# Write some code that selects 'fish' and 'lizard' from the pets array - select the two items at the same time. Assign the return value to a variable named my_pets, then print the contents of my_pets as a single string

pets = ['cat', 'dog', 'fish', 'lizard']

my_pet = pets[2,2]
puts "I have a pet #{my_pet[0]} and a pet #{my_pet[1]}!"

my_pets = pets[2..3]
puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"