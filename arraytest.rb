# array = []
# puts "No.1:" + array.to_s

# array = Array.new()
# puts "No.2:" + array.to_s
 
# #サイズを指定して初期化
# array = Array.new(3)
# puts "No.3:" + array.to_s
 
# #サイズと要素を指定して初期化
# array = Array.new(3, "samurai")
# puts "No.4:" + array.to_s
####
array = Array.new

array[0] = "Java"
array[1] = "PHP"
array[2] = "Python"
array[3] = "Ruby"


array.length.times do |i|
  print "#{array[i]}"
  puts
end

array.each do |i|
  print "#{i}"
  puts
end

ia = [1,2,3]
ia = [2,4] #配列の上書きが可能(配列リテラル)

ia.length.times do |i|
  print "#{ia[i]}"
  puts
end

ia.each do |i|
  print "#{ia[i]}"
  puts
end

xa = [1,3,5,"Ruby",5,[1,2,3]]
xa.each_with_index do |i, idx| #i=値,idx=インデックス
  p [i, idx]
end

#ソート
ary1 = [ 2, 6, 3, 1, 8 ]
ary1s = ary1.sort  
p ary1
p ary1s

#合計
ary1sum = ary1.sum
p ary1sum

