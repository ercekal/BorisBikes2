class DockingStation

  attr_reader :bikes

  def initialize(capacity = 20)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    if empty?
      raise "No bikes available to be released"
    else
      @bikes.pop
    end
  end

  def full?
    @bikes.count >= @capacity
  end

  def empty?
    @bikes.empty?
  end

  def dock(bike_object)
    if full?
      fail "Docking Station is Full"
    else
      @bikes << bike_object
      "Bike has been successfully docked"
    end
  end

  private :full?, :empty?
end


class Bike
  def working?
    return true
  end
end
