require_relative './bike.rb'
class DockingStation
  attr_reader :bike

  def initialize
    @bikes_docked = []
  end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes_docked.pop
  end

  def dock(bike)
    fail 'No space available' if full?
    @bikes_docked << bike
    @bikes_docked[-1]
  end

  private

  def full?
    @bikes_docked.count >= 20
  end

  def empty?
    @bikes_docked.empty?
  end
end

