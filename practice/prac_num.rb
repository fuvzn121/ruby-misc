puts "摂氏温度を華氏温度に変換"

def cels_to_fahr(cels)
  return cels * 9.0 / 5.0 + 32.0
end

p cels_to_fahr(15)


puts "華氏温度を摂氏温度に変換し、100度まで1度刻みで対応を出力"

def fahr_to_cels(fahr)
  return (fahr.to_f - 32) * 5.0 / 9.0 
end

1.upto(100) do |i|
  print i, ">", fahr_to_cels(i), "\n"
end


puts "サイコロを振って出た目を返す"

def dice
  return Random.rand(6) + 1
end
puts dice


puts "10個のサイコロを振って出た目の合計を返すメソッド"

def dice10
  sum = 0
  10.times do
    sum += dice
  end
  sum
end
puts dice10 


puts "整数numが素数であるかどうかを調べるメソッド"

def prime?(num)
  return false if num < 2
  2.upto(Math.sqrt(num)) do |i|
    if num % i == 0
      return false
    end
  end
  return true
end

1.upto(10) do |n|
  puts n if prime?(n)
end
