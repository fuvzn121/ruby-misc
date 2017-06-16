File.open("test.txt", "w") do |f|
  for i in 1..100
    f.puts i
  end
end
