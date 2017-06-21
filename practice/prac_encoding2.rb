# encoding: utf-8

File.open("sjis.txt", "w:Shift_JIS") do |f|
  f.write("こんにちは")
end

File.open("sjis.txt", "r:Shift_JIS") do |f|
  str = f.read
  puts str.encode("UTF-8")
end
