def executable?(base_plan, next_plan)
  elapsed_time = next_plan[:time] - base_plan[:time]
  distance_x = next_plan[:x] - base_plan[:x]
  distance_y = next_plan[:y] - base_plan[:y]

  min_moves_x = distance_x.abs
  min_moves_y = distance_y.abs

  return false if min_moves_x > elapsed_time || min_moves_y > elapsed_time

  movable_times_x = (min_moves_x..elapsed_time).each_slice(2).map(&:first)
  movable_times_y = (min_moves_y..elapsed_time).each_slice(2).map(&:first)

  movable_times_x.any? { |mx| movable_times_y.any? { |my| mx + my == elapsed_time } }
end

n = gets.to_i
travel_plans = [{time: 0, x: 0, y: 0}]

n.times do
  t, x, y = gets.chomp.split(" ").map(&:to_i)
  travel_plans << {time: t, x: x, y: y}
end

result = travel_plans.each_cons(2).all? { |plan| executable?(*plan) }

print("#{result ? 'Yes' : 'No'}\n")
