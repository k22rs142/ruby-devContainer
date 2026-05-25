puts "Hello, abc!"

#条件分岐
score = 80
if score >= 90
  #x = "SCORE" + score.to_s()
  x = "SCORE:S #{score}"
  puts x
elsif score >= 80
  x = "SCORE:A #{score}"
  #"SCORE:"+score.to_s()
elsif score >= 70
  x = "SCORE:B #{score}"
end
puts x

#繰り返し(while)
a = 1
while a <= 10
  print "#{a},"
  a += 1
end
puts

#繰り返し(for)
5.times do |i|
  print "#{i}*"
end
puts

