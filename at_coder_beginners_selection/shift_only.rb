def all_numbers_bisectionable_count(numbers, result = 0)
  return result if numbers.any?(&:odd?)

  result += 1

  numbers = numbers.map {|n| n / 2}
  all_numbers_bisectionable_count(numbers, result)
end

n = gets.to_i
numbers = gets.chomp.split(" ").map(&:to_i)

count = all_numbers_bisectionable_count(numbers)

print("#{count}\n")
