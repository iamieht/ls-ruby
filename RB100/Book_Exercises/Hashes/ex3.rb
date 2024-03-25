# write a program that loops through a hash and prints all of the keys. Then write a program that does the same thing except printing the values. Finally, write a program that prints both.

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
}

puts "Keys"
family.each_key { |key| puts key}
puts "Values"
family.each_value { |value| puts value }
puts "Keys and Values"
family.each { |key, value| puts "#{key}:#{value}" }