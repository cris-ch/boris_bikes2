require_relative './bike.rb'
class DockingStation
  attr_reader :bike

  def initialize
    @bikes_docked = []
  end

  def release_bike
    fail 'No bikes available' if @bikes_docked.empty?
    @bikes_docked.pop
  end

  def dock(bike)
    fail 'No space available' if @bikes_docked.size >= 20
    @bikes_docked << bike
    @bikes_docked[-1]
  end

  def bike
    @bike
  end

end

