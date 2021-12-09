# spec/docking_station_spec.rb
require 'docking_station.rb'
require 'bike.rb'
describe DockingStation do
  it 'releases bike' do
    docking_station = DockingStation.new
    expect(docking_station.release_bike).to be_a(Bike)
  end

  it 'checks if bike is working' do
    docking_station = DockingStation.new
    bike = Bike.new

    expect(bike.working?).to be(true)
  end
  
  it 'check if there is a bike docked' do
    is_expected.to respond_to(:bike)
  end
  
  it 'docks bike' do
    docking_station = DockingStation.new
    bike = Bike.new

    expect(docking_station.dock(bike)).to be(bike)
  end

  it 'checks if there is a bike' do
    docking_station = DockingStation.new
    bike = Bike.new
    docking_station.dock(bike)
    
    expect(docking_station.bike).to eq bike
  end

end