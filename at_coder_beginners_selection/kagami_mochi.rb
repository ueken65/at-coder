n = gets.to_i
餅の直径 = []

n.times do
  餅の直径 << gets.to_i
end

print("#{餅の直径.uniq.length}\n")
