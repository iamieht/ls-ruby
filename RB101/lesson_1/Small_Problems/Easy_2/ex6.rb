# Odd Numbers

## Problem (P)
# Print all odd numbers from 1 to 99, inclusive, to the console, with each number on a separate line.

# Output:
#  - Odd numbers from 1 to 99

## Examples/Test Cases (E)
# 1,3,5,7,9....

## Data Structures (D)
# Integers

## Algorithm (A)
# - Iterate over the numbers 1..99 and outout the number if odd?

## Code (C)
for num in 1..99 do
  puts num if num.odd?
end

numbers = Array(1..99)
numbers.each { |num| puts num if num.odd? }

(1..99).step(2) { |num| puts num }

(1..99).%(2) { |num| puts num }

(0..49).each { |num| puts (num * 2) + 1 }

puts (1..99).select { |num| num.odd? }

puts (1..99).select(&:odd?)

1.upto(99) { |num| puts num if num.odd? }

0.upto(49)  { |num| puts (num * 2) + 1 }

50.times { |num| puts (num * 2) + 1 }

