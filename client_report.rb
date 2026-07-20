#! /usr/local/bin/ruby
#client_report.rb
require 'socket'

host=ARGV[0]
port='http'
path = ARGV[1]

sock = TCPSocket.new host, port
pp 'GET ' + path

if path == nil
  path = "/"
elsif path == "/send"
  path = "/send"
  puts "投稿内容を入力してください"
  message = STDIN.gets
  sock.puts "#{path} #{message}"
  pp "#{path} #{message}"

  puts sock.gets
  sock.close
elsif path == "/list"
  path = "/list"
  sock.puts path
  pp path

  while line = sock.gets
    puts line
  end

  sock.close
end

