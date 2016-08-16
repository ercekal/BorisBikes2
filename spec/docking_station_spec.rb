require 'boris_bikes.rb'

describe DockingStation do
  it {expect(DockingStation.new).to respond_to(:release_bike)}
  it 'should release the working bike' do
    expect(DockingStation.new.release_bike).to be_an_instance_of(Bike)
    expect(DockingStation.new.release_bike.working?).to eq(true)
    end

end
