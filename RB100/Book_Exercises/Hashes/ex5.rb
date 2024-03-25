# What method could you use to find out if a Hash contains a specific value in it? Write a program that verifies that the value is within the hash.

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
}

if family.value?(["bob", "joe", "steve"])
  puts "found"
end