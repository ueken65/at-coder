def sum_all_digits(number)
  number.to_s.chars.map(&:to_i).sum
end

n, a, b = gets.chomp.split(" ").map(&:to_i)

result = []

for number in 1..n do
  if sum_all_digits(number).between?(a, b)
    result << number
  end
end

print("#{result.sum}\n")
