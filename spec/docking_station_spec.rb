# spec/docking_station_spec.rb
require 'docking_station.rb'
require 'bike.rb'
describe DockingStation do
  
  it 'checks if there is a bike docked' do
    expect(subject).to respond_to(:bike)
  end
  
  it 'docks bike' do
    bike = Bike.new
    expect(subject.dock(bike)).to be(bike)
  end

  it 'checks a bike is not released when there are no bikes available' do
    expect {subject.release_bike}.to raise_error 'No bikes available'
  end

  it "doesn't dock a bike if no space available" do
    bike = Bike.new
    20.times { subject.dock(bike) }

    expect {subject.dock(bike)}.to raise_error 'No space available'
  end
end