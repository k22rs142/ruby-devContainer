#! /usr/local/bin/ruby
require 'socket'

def server s
  path, name, message = s.gets.split(" ", 3)
  

  puts "path:#{path}"
  puts "name:#{name}"
  puts "message:#{message}"
  
  if path == "/send"
    puts "SEND"
    f = File.open "message_list.txt","a"
    f.puts "[#{Time.now.getlocal("+09:00")}]#{name}: #{message}"
    f.close
    s.puts "投稿完了"
  elsif path == "/list"
    puts "LIST"
    if File.exist?("message_list.txt")
      f = File.open("message_list.txt", "r")
      while line = f.gets
        s.puts line
      end
      f.close
    end
    s.close
  end
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
