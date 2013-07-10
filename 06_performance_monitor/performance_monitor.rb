def measure(n=1)
  t1 = Time.now
  n.times do 
    yield
  end
  t2 = Time.now
  total_time = t2-t1
  average_time = total_time/n
end
