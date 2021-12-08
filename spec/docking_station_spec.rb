# spec/docking_station_spec.rb
require 'docking_station.rb'
describe DockingStation do
  it 'releases bike' do
    docking_station = DockingStation.new
    expect(docking_station.release_bike).to be(Bike) 
  end
end

