tags = ["A", "IMG", "PRE"]
tags.each do |tagname|
  case tagname
  when "A"
    puts "#{tagname} has child"
  when "IMG"
    puts "#{tagname} has no child"
  else
    puts "#{tagname} cannot be used."
  end
end
