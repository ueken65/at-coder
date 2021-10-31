height, width = gets.chomp.split(" ").map(&:to_i)

rows = []

height.times do
  row = gets.chomp.split(" ").map(&:to_i)
  rows << row
end

row_sums = Array.new(height, 0)
colmun_sums = Array.new(width, 0)

rows.each_with_index do |row, i|
  row.each_with_index do |value, j|
    row_sums[i] += value
    colmun_sums[j] += value
  end
end

rows.each_with_index do |row, i|
  result = row.map.with_index { |v, j| row_sums[i] + colmun_sums[j] - v }
  print("#{result.join(' ')}\n")
end
