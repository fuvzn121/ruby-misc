puts "\n(1)1から100までの整数が昇順に並ぶ配列a"

a = []
100.times{|i| a[i] = i + 1}
p a


puts "\n(2)(1)の配列の各要素を全て100倍した新しい配列a2"

a2 = a.collect{|i| i * 100}
p a2


puts "\n(3)(1)の配列から3の倍数だけを取り出した新しい配列a3"

a3 = a.reject{|i| i % 3 != 0}
p a3


puts "\n(4)(1)の配列を逆順に並べ換えた配列a4"

a4 = a.reverse
p a4


puts "\n(5)(1)の配列に含まれる整数の和"

p a.inject(0){|memo, i| memo += i }


puts "\n(6)(1)の配列から10個の要素をを含む配列を10個取り出し、格納した配列"

result = Array.new
10.times do |i|
  result << a[i*10, 10]
end

p result


puts "\n(7)数値からなる配列num1とnum2に対して、それらの個々の要素を足し合わせた要素からなる配列を返すメソッドsum_array"

def sum_array(num1, num2)
  result = Array.new
  num1.zip(num2){|a, b| result << a + b }
  return result
end

p sum_array([123,423,535], [3242,132,54])

