
# Hashes

## What is a Hash?

- is a data structure that stores items by associated keys.
- Entries are referred to as key-value pairs.
- Most commonly, is created using symbols as *keys* and any data types as *values*.
- Literal: `{}` 
- Can be created with two syntaxes:
	- `{:name => "bob}`
	- `{name: "bob"}`

## Methods and more

| Method/Action           | What it does?                                                                                                                                                | Mutates? | Returns      |
| ----------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------ | -------- | ------------ |
| `hash[:key] = value`    | Adds/Modifies a new key, value pair                                                                                                                          | Yes      | Value        |
| `hash.delete(:symbol)`  | Removes a key/value                                                                                                                                          | Yes      | Value        |
| `hash[:symbol]`         | Retrieves a value from the hash                                                                                                                              | No       | Value        |
| `hash.merge!(new_hash)` | Merges two hashes together                                                                                                                                   | Yes      | Calling Hash |
| `hash.merge(new_hash)`  | Merges two hashes together                                                                                                                                   | No       | New Hash     |
| `hash.empty?`           | Whether a hash has any values                                                                                                                                | No       | Boolean      |
| `hash.key?`             | Checks if a hash contains a specific key                                                                                                                     | No       | Boolean      |
| `hash.select`           | allows you to pass a block and will return any key-value pairs that evaluate to true when passed to the block.                                               | No       | New Hash     |
| `hash.fetch`            | allows you to pass a given key and it will return the value for that key if it exists. You can also specify an option for return if that key is not present. | No       | Value        |
| `hash.to_a`             | returns an array version of your hash                                                                                                                        | No       | Array        |
| `hash.keys`             | returns all keys of a hash                                                                                                                                   | No       | Array        |
| `hash.values`           | returns all values of a hash                                                                                                                                 | No       | Array        |

## Iterating over Hashes

```ruby
# iterating_over_hashes.rb

person = {name: 'bob', height: '6 ft', weight: '160 lbs', hair: 'brown'}

person.each do |key, value|
  puts "Bob's #{key} is #{value}"
end
```

## Hashes as Optional Parameters

```ruby
# optional_parameters.rb

def greeting(name, options = {})
  if options.empty?
    puts "Hi, my name is #{name}"
  else
    puts "Hi, my name is #{name} and I'm #{options[:age]}" +
         " years old and I live in #{options[:city]}."
  end
end

greeting("Bob")
greeting("Bob", {age: 62, city: "New York City"})
```

- curly braces, `{ }`, are not required when a hash is the last argument

```ruby
greeting("Bob", age: 62, city: "New York City")
```

## Hashes vs. Arrays

- Does this data need to be associated with a specific label? If yes, use a hash. If the data doesn't have a natural label, then typically an array will work fine.
- Does order matter? If yes, then use an array. As of Ruby 1.9, hashes also maintain order, but usually ordered items are stored in an array.
- Do I need a "stack" or a "queue" structure? Arrays are good at mimicking simple "first-in-first-out" queues, or "last-in-first-out" stacks.

## Hash Keys

```ruby
irb :001 > {"height" => "6 ft"}     # string as key
=> {"height"=>"6 ft"}
irb :002 > {["height"] => "6 ft"}   # array as key
=> {["height"]=>"6 ft"}
irb :003 > {1 => "one"}             # integer as key
=> {1=>"one"}
irb :004 > {45.324 => "forty-five point something"}  # float as key
=> {45.324=>"forty-five point something"}
irb :005 > {{key: "key"} => "hash as a key"}  # hash as key
=> {{:key=>"key"}=>"hash as a key"}
```

- we are forced to use the old style (i.e., using `=>`) when we deviate from using symbols as keys.