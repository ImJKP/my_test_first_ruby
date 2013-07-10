def sum
  a = 0
  self.each do |x|
    a += x
  end
  a
end