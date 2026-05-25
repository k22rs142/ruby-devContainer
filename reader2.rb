#! /usr/local/bin/ruby

# File.open("reader.rb","r") do |f|
#   while line = f.gets
#     puts line
#   end
# end
#
File.open(ARGV[0],"r") do |f|
  while line = f.gets
    puts line
  end
end