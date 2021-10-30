n = gets.to_i
cards = gets.chomp.split(" ").map(&:to_i).sort{|a, b| b <=> a}

alice_score = 0
bob_score = 0

while cards.length > 0
  alice_score += cards.shift
  break if cards.length == 0
  bob_score += cards.shift
end

result = alice_score - bob_score

print("#{result}\n")
