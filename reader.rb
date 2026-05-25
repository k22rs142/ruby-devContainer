f = File.open("reader.rb","r")
# line = f.gets
# line2 = f.gets
# line3 = f.gets
 
# puts line
# puts line2
# puts line3

while line = f.gets 
  #1.gets()が読み込める行がなくなった場合、nilを返す
  #2.nilはfalseと判定されるため、whileから抜け出せる
  puts line
end

f.close


name = gets()#入力値を代入

puts name
