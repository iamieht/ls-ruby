
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

| Method/Action           | What it does?                       | Mutates? | Returns      |
| ----------------------- | ----------------------------------- | -------- | ------------ |
| `hash[:key] = value`    | Adds/Modifies a new key, value pair | Yes      | Value        |
| `hash.delete(:symbol)`  | Removes a key/value                 | Yes      | Value        |
| `hash[:symbol]`         | Retrieves a value from the hash     | No       | Value        |
| `hash.merge!(new_hash)` | Merges two hashes together          | Yes      | Calling Hash |
| `hash.merge(new_hash)`  | Merges two hashes together          | No       | New Hash     |
| `hash.empty?`           | Whether a hash has any values       | No       | Boolean      |

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