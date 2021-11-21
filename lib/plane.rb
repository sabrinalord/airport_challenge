require_relative('./airport')
class Plane
  def land_at_airport(airport)
    fail "The airport is full" if airport.is_full?
    fail "It's too stormy to land" if airport.local_weather == "Stormy"
    @in_airport = true
    airport.parked_planes << self
  end

  def take_off_from_airport
    @in_airport = false
  end

  def in_airport?
    @in_airport
  end 

end 


