# Even Numbers

## Problem (P)
# Print all even numbers from 1 to 99, inclusive, to the console, with each number on a separate line.

# Output:
#  - Even numbers from 1 to 99

## Examples/Test Cases (E)
# 2,4,6,8,10....

## Data Structures (D)
# Integers

## Algorithm (A)
# - Iterate over the numbers 1..99 and outout the number if even?

## Code (C)
(1..99).each { |num| puts num if num.even? }
