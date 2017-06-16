require "open-uri"

# HTTP
open("http://www.ruby-lang.org/ja/") do |io|
  puts io.read
end

# FTP
filename = "ruby-2.3.0.tar.gz"
url = "ftp://ftp.ruby-lang.org/pub/ruby/2.3/#{filename}"
open(url) do |io|
  File.binwrite(filename, io.read)
end

