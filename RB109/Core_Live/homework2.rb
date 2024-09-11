# How can we rewrite this code to be more DRY using knowledge of
# precedence and logical operators? Refer to the current invocations
# to understand the expected behavior.

```ruby
def validate_game_config(name, rounds, difficulty, use_defaults)
	if use_defaults
		puts "Welcome to Asteroid! Let's play!"
		return
	elsif name == ''
		puts "You need to fill in all fields!"
		return
	elsif rounds < 1
		puts "You need to fill in all fields!"
		return
	elsif difficulty == ''
		puts "You need to fill in all fields!"
		return
	else
		puts "Welcome to Asteroid! Let's play!"
	end
end

validate_game_config('Jack', 0, 'Hard', false)
validate_game_config('', 0, '', true)
validate_game_config('Jack', 3, 'Hard', false)
validate_game_config('Jack', 3, 'Hard', true)
```

```ruby
def valid_string?(str)
  str.is_a?(String) && !str.empty?
end

def validate_game_config2(name, rounds, difficulty, use_defaults)
  if !valid_string?(name) || !valid_string?(difficulty)
    puts "'#{name}' or '#{difficulty}' are not valid Strings"
    return
  end

  if use_defaults || !(use_defaults && name == '' || rounds < 1 || difficulty == '')
    puts "Welcome to Asteroid! #{name} Let's play! in #{difficulty} mode."
    return
  elsif name == '' || rounds < 1 || difficulty == ''
    puts "You need to fill in all fields!"
    return
  else
    puts "Welcome to Asteroid! #{name} Let's play! in #{difficulty} mode."
    return
  end
end

def validate_game_config3(name, rounds, difficulty, use_defaults)
  if !valid_string?(name) || !valid_string?(difficulty)
    puts "'#{name}' or '#{difficulty}' are not valid Strings"
    return
  end

  if use_defaults || !(use_defaults && name == '' || rounds < 1 || difficulty == '')
    puts "Welcome to Asteroid! #{name} Let's play! in #{difficulty} mode."
    return
  else
    puts "You need to fill in all fields!"
    return
  end
end

puts
puts "Version 2"
validate_game_config2('Jack', 0, 'Hard', false)
validate_game_config2('', 0, '', true)
validate_game_config2('Jack', 3, 'Hard', false)
validate_game_config2('Jack', 3, 'Hard', true)
validate_game_config2(1, 3, 'Hard', true)

puts
puts "Version 3"
validate_game_config3('Jack', 0, 'Hard', false)
validate_game_config3('', 0, '', true)
validate_game_config3('Jack', 3, 'Hard', false)
validate_game_config3('Jack', 3, 'Hard', true)
validate_game_config3(1, 3, 'Hard', true)
```

## Bonus Questions ##
# 1. Write an alternative version with as few lines
#    as possible. Is this better?
# 2. Make this function sturdier by throwing an error
#    if the `name` and `difficulty` arent strings.
# 3. Make the "Let's play!" message custom by including
#    the given arguments in the output.
