class Bus

  attr_accessor :route, :destination, :passengers

def initialize(route, destination, passengers = [])
  @route = route
  @destination = destination
  @passengers = passengers
end

def passenger_count
  @passengers.count
end

def add_passenger(new_passenger)
  @passengers.push(new_passenger)
end

def remove_passenger(passenger)
  @passengers.delete(passenger)
  return @passengers
end

def empty_bus
  @passengers.clear
end



















end
