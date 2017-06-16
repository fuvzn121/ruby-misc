def myloop
  while true
    yield           #ブロックを実行する
  end
end

num = 1             #numを初期化する
myloop do
  puts "num is #{num}"
  break if num > 10
  num *= 2
end
