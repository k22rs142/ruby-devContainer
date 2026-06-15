#client1.rb
require 'socket'

host='www.is.kyusan-u.ac.jp'
port='http'
path = '/~toshi/'

sock = TCPSocket.new host, port
pp 'GET ' + path

cmd = 'GET '+path+' HTTP/1.0' + "\r\n\r\n"
pp cmd
sock.puts cmd
# sock.puts "\r\n"

# line = sock.gets
# puts line

# while line = sock.gets
#   puts line
# end

# flg = 0
# while line = sock.gets
#   # pp line
#   if line. == "<!DOCTYPE html>\n"
#       flg = 1
#   end

#   if flg == 1
#     puts line
#   end
# end
# 
flg = false
while line = sock.gets
  # pp line #debug用★
  puts line if flg
  flg = true if line == "\r\n"
end

