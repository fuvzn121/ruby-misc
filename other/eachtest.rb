sum = 0
outcome = {"参加費"=>100, "ストラップ代"=>1000, "懇親会会費"=>4000}
outcome.each do |pair|
  sum += pair[1] #valueを指定して取り出し
end

puts "合計: #{sum}"
