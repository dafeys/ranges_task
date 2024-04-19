numbers = [ 10, 20, 30, 40, 50 ]

p numbers.reduce(0) { |sum, number| sum + number } # 150

colors = [ "red", "green", "blue", "red", "green"]

colors_count = colors.reduce({}) do |result, color|
  if result[color].nil?
    result[color] = 1
  elsif result[color]
    result[color] += 1
  end

  result
end

p colors_count


words = ["cat", "window", "concatenation"]
total_characters = words.reduce(0) do |total, word|
  total + word.length
end
