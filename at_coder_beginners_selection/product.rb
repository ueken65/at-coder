a, b = gets.split(" ").map(&:to_i)
result = (a * b).even? ? 'Even' : 'Odd'
print("#{result}\n")
