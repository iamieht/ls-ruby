# How can we add multiple items to our array? (Dino and Hoppy)

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.push('Dino', 'Hoppy')
p flintstones

flintstones.push("Dino").push("Hoppy")   # push returns the array so we can chain
flintstones.push("Dino", "Hoppy")  # push can take multiple arguments
flintstones.concat(%w(Dino Hoppy))  # concat adds an array rather than one item