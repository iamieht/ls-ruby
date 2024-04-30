# Class and Instance Methods
# Locate the ruby documentation for methods File::path and File#path for version 2.7.8 of Ruby here (newer versions of Ruby have changed the implementation of these methods, so be sure to follow the link provided). How are they different?

## File::path: Returns the string representation of the path
File.path("/dev/null")          #=> "/dev/null"
File.path(Pathname.new("/tmp")) #=> "/tmp"

## File#path: Returns the pathname used to create file as a string
File.new("testfile").path               #=> "testfile"
File.new("/tmp/../tmp/xxx", "w").path   #=> "/tmp/../tmp/xxx"

# Both methods can be found on the documentation page for the File class in the Core API section. File::path is a class method, while File#path is an instance method.

# Class methods are called on the class, while instance methods are called on objects. Thus:

puts File.path('bin')

# calls the class method File::path since we're calling it on the File class, while:

f = File.new('my-file.txt')
puts f.path

# calls the instance method File#path since we're calling it on an object of the File class, namely f.