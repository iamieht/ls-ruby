a = 42
b = 42
c = a

puts a.object_id
puts b.object_id
puts c.object_id

# It turns out that this has to do with how integers are immutable; that is, the value of an integer object cannot be mutated. In Ruby, each integer is a single immutable object (eg, there can only ever be one integer 1 object, one integer 2 object, and so on). As a result, a, b, and c all reference the same immutable integer 42 object. Any operation on an integer simply returns a new integer object.

# Note that for performance reasons, true, false and nil are also handled specially (eg, every instance of true will all have the same object id). This also has to do with the immutability of true, false and nil.