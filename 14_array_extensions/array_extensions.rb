class Array

  def sum
    sum = 0
    self.each do |x|
      sum += x
    end
    sum
  end

  def square
      self.map do |x|
        x**2
      end
  end

  def square!
    self.map! do |x|
      x**2
    end
  end

end