# spec/docking_station_spec.rb
require 'docking_station.rb'
# require 'bike.rb'
describe DockingStation do
  it 'releases bike' do
    docking_station = DockingStation.new
    expect(docking_station.release_bike).to be_a(Bike)
  end

  it 'checks if bike is working' do
    docking_station = DockingStation.new
    bike = docking_station.release_bike

    expect(bike.working?).to be(true)
  end

end

# describe Bike do

# end