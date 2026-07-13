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
  elsif path == "/api/now"
    s.print "HTTP/1.0 200 OK\r\n"  
    s.print "Content-Type: application/json\r\n"  
    s.print "\r\n"  
    s.puts"{"
    s.puts'"time": "' + "#{Time.now}" + '"'
    s.puts"}"

  else
    filename = path.slice(1..-1)
    if File.exist?(filename)
    #filename = path.gsub("/","")
    #filename = path.delete_prefix("/")
      pp filename
      s.print "HTTP/1.0 200 OK\r\n"  
      s.print "Content-Type: text/plain; charset=UTF-8\r\n"  
      s.print "\r\n"
      f = File.open(filename, "r")
      while line = f.gets 
        s.puts line
      end
      f.close
    else
      s.print "HTTP/1.0 404 Not Found\r\n"  
      s.print "Content-Type: text/html\r\n"  
      s.print "\r\n"
      s.print "<h1>404 file #{filename} not found</h1>"  
      s.print "<p>File Not Found</p>" 
    end
  end
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
