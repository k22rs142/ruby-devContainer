#! /usr/local/bin/ruby
require 'socket'

def server s
  #HTTP/1.0 として正しく返答
  #1行目 HTTP/1.0 200 OK
  #2行目 Content-Type text/html
  #3行目 空行
  #4行目 コンテンツ
  #最後 ソケットをクローズ
  cmd, path, ver = s.gets.split(" ")
  # cmd = line.split(" ")
  if path == "/"
    s.print "HTTP/1.0 200 OK\r\n"  
    s.print "Content-Type: text/html\r\n"  
    s.print "\r\n"  
    pp 'INDEX'
    s.puts "<h1>index</h1>"
  else
    pp "OTHER"
    s.puts '<h1>other</h1>'
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
