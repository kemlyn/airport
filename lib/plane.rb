# Figures the status of the plane
class Plane
  attr_accessor :airport

  def landed?(airport)
    airport.in_port? self
  end
end
