# What is the difference between merge and merge!? Write a program that uses both and illustrate the differences.

# merge: returns a new Hash formed by merging another has with self
# merge!: returns self after merging another hash (this mutates the caller)

hash1 = {
  mama: "Maria",
  papa: "Jose",
  son:  "Cristiano",
  daugher: "Josefina"
}

hash2 = {
  uncle: "Antonio",
  aunt: "Maria Jesus",
}

hash3 = hash1.merge(hash2)
p hash3

hash1.merge!(hash2)
p hash1