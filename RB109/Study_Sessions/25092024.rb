def compute_sum(number)
  total = 0
  1.upto(number) { |value| total += value }
  total
end

number = 5
sum = compute_sum(number)
p sum
p number