#! /usr/local/bin/ruby
require 'socket'

def server s
  while line=s.gets
    pp line
    s.puts line
    break if line == "\r\n"
  end
   s.close
end

#総合窓口
gs = TCPServer.new('http') #グローバルサーバー?
while true
  pp "start accept"
  s = gs.accept
  server s
  sleep 10
end