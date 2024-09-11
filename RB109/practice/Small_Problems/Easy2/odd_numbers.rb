=begin
Print all odd numbers from 1 to 99, inclusive, to the console, with each number on a separate line.
=end

(1..99).to_a.each { |num| puts num if num.odd? }

100.times { |num| puts num if num.odd? }

1.upto(99) { |num| puts num if num.odd? }