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
  
  it 'check if there is a bike docked' do
    is_expected.to respond_to(:bike)
  end
  
  it 'docks bike' do
    docking_station = DockingStation.new
    bike = docking_station.release_bike

    expect(docking_station.dock(bike)).to be(bike)
  end

  it 'shows an error message' do
    docking_station = DockingStation.new
    
    expect { docking_station.available? }.to raise_error
  end
end