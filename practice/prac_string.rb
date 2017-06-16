str = "Ruby is an object oriented programming language"
ary = str.split
p ary

p ary.sort

p ary.sort_by{|s| s.downcase }

count = Hash.new(0)
str.each_char do |c|
  count[c] += 1
end
count.keys.sort.each do |c|
  printf("'%s': %s\n", c, "*" * count[c])
end
