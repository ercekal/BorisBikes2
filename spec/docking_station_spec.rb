require 'boris_bikes.rb'

describe DockingStation do
  before(:all) do
    @station = DockingStation.new
    @bike = @station.release_bike
  end

  it 'should release the working bike' do
    expect(@bike).to be_an_instance_of(Bike)
    expect(@bike.working?).to eq(true)
    end

  it 'should raise error if no bikes available' do
    expect{@station.release_bike}.to raise_error(RuntimeError)
  end

  it 'should dock a bike to an empty station' do
    expect(@station.dock(@bike)).to eq("Bike has been successfully docked")
  end

  it 'should raise error if station is full' do
    bike2 = Bike.new
    expect{@station.dock(bike2)}.to raise_error(RuntimeError)
  end

end
