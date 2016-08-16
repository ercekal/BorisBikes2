require 'boris_bikes.rb'

describe DockingStation do
  it {expect(DockingStation.new).to respond_to(:release_bike)}
end
