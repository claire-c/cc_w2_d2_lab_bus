class Bus

  attr_accessor :route, :destination, :passengers

def initialize(route, destination, passengers = [])
  @route = route
  @destination = destination
  @passengers = passengers
end

def drive
  return "Brum Brum"
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

def pick_up_from_stop(bus_stop)
  #I need to push the bus stop queue into the bus.

  #The bus passengers is an empty array.
  #The bus stop passengers is an array with three person instances as elements.
  
  passengers_wanting_on_bus = bus_stop.queue
  for each_passenger in passengers_wanting_on_bus
    @passengers << each_passenger
  end

end


















end
