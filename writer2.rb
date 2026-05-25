# File.open("test2.txt","w") do |f|
#     f.puts "Hello, File I/O ver2"
# end

File.open(ARGV[0],"w") do |f|
    f.puts "Hello, File I/O ver2"
end

