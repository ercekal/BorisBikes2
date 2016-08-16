class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
    @capacity = 20
  end

  def release_bike
    if @bikes.empty?
      raise "No bikes available to be released"
    else
      @bikes.pop
    end
  end

  def dock(bike_object)
    if @bikes.length >= @capacity
      raise "Docking Station is Full"
    else
      @bikes << bike_object
      "Bike has been successfully docked"
    end
  end
end


class Bike
  def working?
    return true
  end
end
