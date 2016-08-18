class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :bikes, :capacity

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    if bike = working_bike
    @bikes.delete(bike)
    else
      raise 'There are no working bikes'
    end
  end

  def dock(bike)
    fail "Docking Station is Full"  if full?
        @bikes << bike
  end

private
  def working_bike
    @bikes.find(&:working?)
  end

  def full?
    @bikes.count >= @capacity
  end

  def empty?
    @bikes.empty?
  end
end

class Bike
  def initialize
    @working = true
  end

  def working?
    @working
  end

  def report_bike
    @working = false
  end

end
