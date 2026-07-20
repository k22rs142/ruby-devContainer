#! /usr/local/bin/ruby
#client1.rb
require 'socket'

#host='www.is.kyusan-u.ac.jp'
host=ARGV[0]
port='http'
#path = '/~toshi/'
path = ARGV[1]

sock = TCPSocket.new host, port
pp 'GET ' + path

if path == nil
  path = "/"
elsif path == "/send"
  path = "/send"
  puts "投稿内容を入力してください"
  message = STDIN.gets
  sock.puts "#{message} #{path}"
  pp "#{message} #{path}"
  #sock.close
end

