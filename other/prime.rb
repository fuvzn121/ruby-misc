if num < 2
  2.upto(Math.sqrt(num)) do |i|
    if num % i == 0
      return false
    end
  end
  return true
end

1.upto(1000) do |n|
  puts n if prime?(n)
end
