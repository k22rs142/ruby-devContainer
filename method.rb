#関数
def greet(name)
  "Hello,#{name}"
end

puts greet("田中さん")

def max x,y
  if x>y
    x #return x
  else
    y #return y
  end
end

puts max(5,10)
puts max(24,-1)