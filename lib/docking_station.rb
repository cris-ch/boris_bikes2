require_relative './bike.rb'
class DockingStation
  attr_reader :bike
  
  def release_bike
    return Bike.new
  end

  def dock(bike)
    @bike = bike
  end

  def available?
    fail
  end

end

