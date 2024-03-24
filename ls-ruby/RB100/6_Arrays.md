# Arrays

- An **Array** is an ordered list of elements that can be of any type.
- **Literal**: `[]` 
- Are indexed lists. You can reference any element by its index number. i.e. `array[idx]` 
- Methods that modify the array **mutate the caller** 

## Methods

| Method              | What is does?                                                                                                  | Mutates the caller? | Returns                                                                           |
| ------------------- | -------------------------------------------------------------------------------------------------------------- | ------------------- | --------------------------------------------------------------------------------- |
| **first**           | returns the first element of the array                                                                         | No                  | first element                                                                     |
| **last**            | returns the last element of the array                                                                          | No                  | last element                                                                      |
| **pop**             | removes the last element of the array                                                                          | Yes                 | last element                                                                      |
| **``<<``**          | adds elements to the array                                                                                     | Yes                 | Updated Array                                                                     |
| **push**            | adds elements to the array                                                                                     | Yes                 | Updated Array                                                                     |
| **map**             | iterates over an array and apply a block to each element                                                       | No                  | New Array with the results                                                        |
| **collect**         | is an alias to **map** - they do the same thing                                                                | No                  | New Array with the results                                                        |
| **delete_at**       | deletes a value at a certain index from the array                                                              | Yes                 | The value deleted                                                                 |
| **delete**          | deletes all instances of a value in an array                                                                   | Yes                 | The value deleted                                                                 |
| **uniq**            | Iterates over an array, deletes any duplicates                                                                 | No                  | New Array with the results                                                        |
| **uniq!**           | performs the **uniq** method destructively                                                                     | Yes                 | Updated Array                                                                     |
| **each**            | iterates over each element of the array.                                                                       | No                  | - `#<Enumerator>`<br>- With expression: original array                            |
| **select**          | iterates over an array                                                                                         | No                  | new array that includes any item that returns ``true``to the expression provided. |
| **unshift**         | Similar to push but adds elements to the start of the list                                                     | Yes                 | Updated Array                                                                     |
| **to_s**            | creates a string representations of an array                                                                   | No                  | String representation of the array                                                |
| **include?**        | checks to see if the argument given is included in the array. This is a **predicate**                          | No                  | `true` or `false`                                                                 |
| **flatten**         | takes an array that contains nested arrays and create a one-dimensional array.                                 | No                  | New Array with the results                                                        |
| **flatten!**        | destructive version of **flatten**                                                                             | Yes                 | Updated Array                                                                     |
| **each_index**      | similar to the **each** method but the variable represents the index number instead of the value at each index | No                  | Original Array                                                                    |
| **each_with_index** | iterates over the value and index of an array                                                                  | No                  | Original Array                                                                    |
| **sort**            | orders an array                                                                                                | No                  | New Array with the results                                                        |
| **product**         | combines two arrays                                                                                            | No                  | Returns a new array that is a combination of all elements from all arrays.        |


## Examples

```ruby
irb :002 > array = [1, 'Bob', 4.33, 'another string']
irb :003 > array.first => 1
```

```ruby
irb :004 > array.last 
=> "another string"
```

```ruby
irb :007 > array.pop 
=> "another string" 
irb :008 > array 
=> [1, "Bob", 4.33]
```

```ruby
irb :009 > array.push("another string") 
=> [1, "Bob", 4.33, "another string"]
```

```ruby
irb :001 > a = [1, 2, 3, 4] 
=> [1, 2, 3, 4] 
irb :002 > a.map { |num| num**2 } 
=> [1, 4, 9, 16] 
irb :003 > a.collect { |num| num**2 } 
=> [1, 4, 9, 16] 
irb :004 > a 
=> [1, 2, 3, 4]
```

```ruby
irb :005 > a.delete_at(1) 
=> 2 
irb :006 > a 
=> [1, 3, 4]
```

```ruby
irb :007 > my_pets = ["cat", "dog", "bird", "cat", "snake"] 
=> ["cat", "dog", "bird", "cat", "snake"] 
irb :008 > my_pets.delete("cat") 
=> "cat" 
irb :009 > my_pets 
=> ["dog", "bird", "snake"]
```

```ruby
irb :010 > b = [1, 1, 2, 2, 3, 3, 4, 4] 
=> [1, 1, 2, 2, 3, 3, 4, 4] 
irb :011 > b.uniq 
=> [1, 2, 3, 4] 
irb :012 > b 
=> [1, 1, 2, 2, 3, 3, 4, 4]
```

```ruby
irb :013 > b = [1, 1, 2, 2, 3, 3, 4, 4] 
=> [1, 1, 2, 2, 3, 3, 4, 4] 
irb :014 > b.uniq! 
=> [1, 2, 3, 4] 
irb :015 > b 
=> [1, 2, 3, 4]
```

```ruby
irb :001 > numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] 
=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] 
irb :002 > numbers.select { |number| number > 4 } 
=> [5, 6, 7, 8, 9, 10] 
irb :003 > numbers 
=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
```

## Methods with an !

- The bang suffix (`!`) at the end of the method name usually indicates that the method will change (or mutate) the caller permanently. Unfortunately this is not always the case.

