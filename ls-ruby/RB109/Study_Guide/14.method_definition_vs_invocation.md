# Method definition vs. Method invocation

**Method definition** is when we define a method using the `def` keyword

```ruby
def greeting
	puts "Hello"
end
```

**Method invocation** is when we call a method.

```ruby
greeting # 'Hello'
```

```ruby
[1, 2, 3].each { |num| puts num }
```

Any method can be called with a block, but the block is only executed if the method is defined in a particular way.

The block is part of the method invocation, as the block acts as an argument to the method. In the same way that a local variable can be passed as an argument to a method at invocation, when a method is called with a block, the block acts as an argument to that method.

 * Some methods pass an argument to a block (e.g. `#times`) where others do not (`#loop`).

```ruby
5.times do |n| 
	p n 
end 
# 0 
# 1 
# 2 
# 3 
# 4
```

```ruby
loop do |block_param| 
	p block_param 
	break 
end 
# nil
```

- The difference in binding between `do..end` vs. `{}`

```ruby
array = [1, 2, 3] 
p array.map do |num| 
	num + 1 
end
# <Enumerator: [1, 2, 3]:map>
```

```ruby
array = [1,2,3] 
p array.map { |num| num + 1 }
# [2, 3, 4]
```

The block argument using `{}` binds more tightly to the `#map` method invocation than the block argument using `do..end` . If you run the two code snippets, you'll see the first returns an Enumerator, while the second returns an Array. https://docs.ruby-lang.org/en/3.2/Array.html#method-i-map

