n = gets.to_i

roads = []

(n - 1).times do
  from, to = gets.chomp.split(" ").map(&:to_i)
  roads << {from: from, to: to}
end

# TODO:
