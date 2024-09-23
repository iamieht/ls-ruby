# There's a problem with this code. Can you identify precisely what is causing
# the issue and propose a solution?
def create_people(names, ages)
  people = []

  index = 0
  names.each_with_object({}) do |name, hash|
    hash['name'] = name
    hash['age'] = ages[index]
    people << hash
    index += 1
  end

  people
end

names = ['Alice', 'Bob', 'Marcel', 'Juniper']
ages = [44, 25, 88, 4,]
p create_people(names, ages)

## Bonus Questions ##
# 1. How does your proposed solution behave when we have a different length
#    for our `names` array and `age` array?
# 2. What if we wanted to mutate the `names` array to get the desired outcome?
# 3. Can you write a snippet that demonstrates a good use case for `each_with_object`,
#    to help whoever wrote this code understand how it can be used?

# The line people << hash seems to append a reference to the same object referenced by block parameter hash during each iteration, so at the end of the iteration, the array people ends up with 4 elements, each referencing the same object in memory, in this case {"name"=>"Juniper", "age"=>4}  .

# My solution is:
def create_people(names, ages)
  people = []

  index = 0
  names.each_with_object({}) do |name, hash|
    hash['name'] = name
    hash['age'] = ages[index]
    people << hash.clone
    index += 1
  end

  people
end

names = ['Alice', 'Bob', 'Marcel', 'Juniper']
ages = [44, 25, 88, 4,]
p create_people(names, ages)

# hash.clone creates a shallow copy of the instance object, so it appends a copy of the object to the people array, so each element of the array references a new object.

## Bonus Questions ##
# 1. With my solution, if the array names has more elements than the array ages, the key is added to the people array but the value is nil. In case the ages array has more elements than names then the last hash appended to people is the last element of the names array and the rest of the elements in ages are ignored.