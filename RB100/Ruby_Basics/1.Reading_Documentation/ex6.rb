# Using the ruby documentation, determine how you would write a Symbol that represents your name. We aren't looking for a String; we want a Symbol, which is one of ruby's datatypes.

:ivan
p :ivan

# You can also create a symbol out of a string. For example:
my_name = :'Mary Jones'

p my_name # => :'Mary Jones'
p my_name.class # => Symbol