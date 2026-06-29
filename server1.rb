#! /usr/local/bin/ruby
require 'socket'

gs = TCPServer.new('http') #グローバルサーバー?


while true
  pp "start accept"
  s = gs.accept
  while line=s.gets
    pp line
    s.puts line
    break if line == "\r\n"
  end
  s.close
  sleep 10
end