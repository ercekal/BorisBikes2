class DockingStation
  DEFAULT_CAPACITY = 20

  attr_accessor :capacity

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    fail "No bikes available to be released" if empty?
    @bikes.pop
  end

  def dock(bike_object)
    fail "Docking Station is Full"  if full?
    @bikes << bike_object
  end

private
attr_reader :bikes

  def full?
    @bikes.count >= @capacity
  end

  def empty?
    @bikes.empty?
  end

end


class Bike
  def working?
    return true
  end
end
