#! /usr/local/bin/ruby
require 'socket'

def server s
  cmd, path, ver = s.gets.split(" ")
  # cmd = line.split(" ")
  if path == "/"
    pp 'INDEX'
    s.puts "index"
  else
    pp "OTHER"
    s.puts 'other'
  end
  # while line=s.gets
  #   pp line
  #   s.puts line
  #   break if line == "\r\n"
  # end
   s.close
end

#総合窓口
gs = TCPServer.new('http') #グローバルサーバー?
while true
  pp "start accept"
  s = gs.accept
  Thread.new do #新しいスレッド処理を行う(並列処理?)
    server s
    #sleep 10
  end
end