class DockingStation
  attr_reader :bikes
  def initialize
    @bikes = []
  end

  def release_bike
    return Bike.new
  end

  def dock(bike)
    @bikes << bike
    "Bike has been successfully docked"
  end
end


class Bike
  def working?
    return true
  end
end
