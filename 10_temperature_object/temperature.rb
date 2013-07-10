class Temperature
#Class
  
  def Temperature.from_celsius(c)
    new(:c => c)
  end

  def Temperature.from_fahrenheit(f)
    new(:f => f)
  end

#Instance

  def initialize options
    @in_f = options[:f] || options[:c] * (9.0/5.0) + 32
    @in_c = options[:c] || (@in_f - 32) * (5.0/9.0)
  end

  def in_fahrenheit
    @in_f
  end

  def in_celsius
    @in_c
  end

end

class Celsius < Temperature

  def initialize(c)
    super(:c => c)
  end

end

class Fahrenheit < Temperature

  def initialize(f)
    super(:f => f)
  end

end

