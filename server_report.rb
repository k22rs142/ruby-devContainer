#! /usr/local/bin/ruby
require 'socket'

def server s
  #HTTP/1.0 として正しく返答
  #1行目 HTTP/1.0 200 OK
  #2行目 Content-Type text/html
  #3行目 空行
  #4行目 コンテンツ
  #最後 ソケットをクローズ
  #cmd, path, ver = s.gets.split(" ")
  #pp s.gets
  message = s.gets
  path = s.gets

  puts "message:#{message}"
  puts "path:#{path}"

  puts "SEND"
    #pp s.gets
    #message = s.gets
  f = File.open "message_list.txt","a"
  f.puts message
  f.close
   s.close
end

#総合窓口
gs = TCPServer.new('http') #グローバルサーバー?
while true
  puts "start accept"
  s = gs.accept
  Thread.new do #新しいスレッド処理を行う(並列処理?)
    server s
    #sleep 10
  end
end
