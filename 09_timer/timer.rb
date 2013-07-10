class Timer

attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    hours = @seconds/3600
    time_left = @seconds % 3600
    minutes_since_hour = time_left/60
    seconds_since_minute = time_left%60

    sprintf("%02d:%02d:%02d", hours, minutes_since_hour, seconds_since_minute)
      
  end

end