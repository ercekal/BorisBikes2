require 'boris_bikes.rb'

describe DockingStation do
  let (:bike) { double :bike }
  before(:all) do
    subject = DockingStation.new
  end

  it 'should raise error if no bikes available' do
    expect{subject.release_bike}.to raise_error(RuntimeError)
  end

  it 'should dock a bike to an empty station' do
    expect(subject.dock(bike)).to eq([bike])
  end

  it 'should raise error if station is full' do
    expect{subject.capacity.times {subject.dock(Bike.new)}}.to raise_error(RuntimeError)
  end

  it 'should have a default capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  it 'should set a given capacity' do
    station = DockingStation.new(30)
    expect(station.capacity).not_to eq DockingStation::DEFAULT_CAPACITY
  end

    it 'releases working bikes' do
      bike = double("bike", :working? => true)
      subject.dock(bike)
      expect(subject.release_bike).to be_working
    end
end
