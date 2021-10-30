@n = gets.to_i

def add_bracket(brackets)
  result = []
  brackets.each do |bracket|
    result << "#{bracket}(" if (@n / 2) > bracket.count('(')
    result << "#{bracket})" if bracket.count('(') > bracket.count(')')
  end

  result
end

return if (@n.odd?)

result = ['(']

while result.first.length < @n
  result = add_bracket(result)
end

result.each { |r| print("#{r}\n") }
