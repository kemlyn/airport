CAPACITY = 50
# Initialize the airport controls
class Airport
  attr_accessor :planes, :weather, :capacity

  def initialize(weather = 'sunny', capacity = CAPACITY)
    @plane_arr = []
    @weather = weather
    @capacity = capacity
  end

  def land!(plane)
    raise 'Airport full, please turn around' if max_capacity == 50
    @plane_arr << plane
  end

  def in_port?(plane)
    @plane_arr.include? plane
  end

  def max_capacity
    @plane_arr.length == 50
  end

  def take_off(plane)
    raise 'Your plane is at another airport' if in_port?(plane) == false
    raise 'Cannot take off due to weather' if weather == 'raining'
    @plane_arr.delete(plane)
  end
end
