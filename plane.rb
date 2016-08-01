# класс - самолет

class Boeing737

  KILOGRAMMS_PER_HOUR=2600

  attr_reader :fuel

  def initialize
    @fuel=0
  end

  def add_fuel amount
    @fuel+=amount
  end

  def flight_duration
    @fuel/KILOGRAMMS_PER_HOUR
  end

end

# plane=Boeing737.new
# plane.add_fuel 20.000
# puts "Flight duration is #{plane.flight_duration} hours"