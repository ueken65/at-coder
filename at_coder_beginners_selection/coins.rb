五百円玉の枚数 = gets.to_i
百円玉の枚数 = gets.to_i
五十円玉の枚数 = gets.to_i
合計金額 = gets.to_i

五百円玉のみの組み合わせで取りうる金額 = [0].concat(Array.new(五百円玉の枚数) {|index| (index + 1) * 500})
百円玉のみの組み合わせで取りうる金額 = [0].concat(Array.new(百円玉の枚数) {|index| (index + 1) * 100})
五十円玉のみの組み合わせで取りうる金額 = [0].concat(Array.new(五十円玉の枚数) {|index| (index + 1) * 50})

result = 五百円玉のみの組み合わせで取りうる金額.product(百円玉のみの組み合わせで取りうる金額, 五十円玉のみの組み合わせで取りうる金額)
                                        .filter_map { |v| v.sum == 合計金額 }
                                        .count

print("#{result}\n")
