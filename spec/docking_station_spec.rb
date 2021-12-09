# spec/docking_station_spec.rb
require 'docking_station.rb'
require 'bike.rb'
describe DockingStation do

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

  it 'check if a bike should be released' do
    docking_station = DockingStation.new
    bike = Bike.new
    docking_station.dock(bike)

    expect(docking_station.release_bike).to eq bike
  end

  it 'check a bike is not released when there are no bikes available' do
    docking_station = DockingStation.new

    expect {docking_station.release_bike}.to raise_error 'No bikes available'
  end

end