name = 'Roger'

puts name.downcase == 'RoGeR'.downcase
puts name == 'DAVE'

puts name.casecmp('RoGeR') == 0
puts name.casecmp('DAVE') == 0

# The idea of strings being "greater than" or "less than" each other can be a bit confusing, so I'll take a shot at explaining it in more detail.

# If you're doing a case-insensitive comparison of two strings, the string that comes first in alphabetical order is "less than" the other, and the string that comes second is "more than" the other. So, these statements all evaluate to true:

"anne" < "bob"
"joe" > "dave"
"pete" > "paul"

# However, if you get into case sensitivity, things get a lot more complicated, because every capital letter is "less than" every lower-case letter. (Look at an ASCII table to get an idea why.) So, these statements all evaluate to true as well:

"ANNE" < "Andy"  
"Joe" < "dave"  
"Pete" < "paul"  
"SZYMANOWSKI" < "Samuels"  

# This quirk of computer nature is the main reason that "typically, when comparing strings, the goal is to compare their values, regardless of whether the characters are uppercase or lowercase," as the solution discussion says. For example, if you are sorting a list of names, and some are capitalized and some are in all caps, then the names will often be out of order if you don't ignore case: because "Z" comes before "a," then "SZYMANOWSKI" will also come before "Samuels."

# This is why methods like #casecmp exist.