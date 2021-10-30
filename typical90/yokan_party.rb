@all_break_count, @length = gets.chomp.split(" ").map(&:to_i)
@break_count = gets.to_i
@break_points = gets.chomp.split(" ").map(&:to_i)

def solve(midium)
  count = 0
  prev = 0

  index = 1
  while index <= @all_break_count
    if (@break_points[index - 1] - prev >= midium && @length - @break_points[index - 1] >= midium)
      count += 1
      prev = @break_points[index - 1]
    end

    index += 1
  end

  count >= @break_count
end

left = -1
right = @length + 1

while (right - left > 1)
  midium = left + (right - left) / 2
  if (solve(midium) == false)
    right = midium
  else
    left = midium
  end
end

print("#{left}\n")
