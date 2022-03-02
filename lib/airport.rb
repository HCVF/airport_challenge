require "plane"

class Airport
  attr_reader :hangar

  CAPACITY = 20

  def initialize
    @hangar = []
  end

  def land(plane)
    fail "Airport full" if full?
    @hangar << plane
  end

  def take_off(plane)
    @hangar.delete(plane)
  end

  private

  def full?
    hangar.size == CAPACITY
  end
end
