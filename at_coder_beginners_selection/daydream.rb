def delete_daydream_prefix(s)
  while s.length > 0
    if s.end_with?("dream")
      s = s.delete_suffix("dream")
      next
    end
    if s.end_with?("dreamer")
      s = s.delete_suffix("dreamer")
      next
    end
    if s.end_with?("erase")
      s = s.delete_suffix("erase")
      next
    end
    if s.end_with?("eraser")
      s = s.delete_suffix("eraser")
      next
    end
  end

  return s
end

s = gets.chomp

result = delete_daydream_prefix(s)

if result.empty?
  print("YES\n")
else
  print("NO\n")
end
