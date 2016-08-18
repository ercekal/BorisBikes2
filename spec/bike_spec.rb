require 'boris_bikes.rb'

describe Bike do
  it {expect(Bike.new).to respond_to(:working?)}

  it 'person should report a non-working bike' do
    subject.report_bike
    expect(subject.working?).to eq(false)
  end
  
end

#
