# Figures the status of the plane
class Plane
  def landed?(airport)
    airport.in_port? self
  end
end
