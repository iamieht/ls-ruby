=begin
Write a program that uses a hash to store a list of movie titles with the year they came out. Then use the puts command to make your program print out the year of each movie to the screen.
=end

movies = {
  "The Shawshank Redemption"  => 1994,
  "The Godfather"             => 1972,
  "The Dark Knight"           => 2008,
  "The Godfather Part 2"      => 1974,
  "12 Angry Men"              => 1957,
  "Schindler's List"          => 1993
}

movies.each do |k, v|
  puts v
end