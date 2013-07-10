def reverser
  yield.split(' ').map{|w| w.reverse}.join(' ')
end

def adder(n=1)
  return yield + n
end

def repeater(n=1)
  i=1
  for i in 0...n
    yield
  end
end