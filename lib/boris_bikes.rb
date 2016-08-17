class DockingStation

  DEFAULT_CAPACITY = 20

  attr_accessor :capacity

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
    @broken_bikes = []
  end

  def release_bike
    fail "No bikes available to be released" if empty?
    @bikes.pop
  end

  def dock(bike)
    fail "Docking Station is Full"  if full?
      puts "Is your bike working? Please answer yes or no"
        answer = gets.chomp
      if answer.downcase == "yes"
        @bikes << bike
      else
        @broken_bikes << bike
      end
  end

private
attr_reader :bikes

  def full?
    (@bikes.count + @broken_bikes.count) >= @capacity
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
