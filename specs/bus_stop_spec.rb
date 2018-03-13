
require('minitest/autorun')
require_relative('../bus.rb')
require_relative('../person.rb')
require_relative('../bus_stop.rb')

class TestStudents < MiniTest::Test

def setup
  @passenger1 = Person.new("Ivy", 35)
  @passenger2 = Person.new("Cletus", 47)
  @passenger3 = Person.new("Little Jimmy", 4)
  @all_passengers = [@passenger1, @passenger2, @passenger3]
  @bus_stop = BusStop.new("The Moon", @all_passengers)
  @bus = Bus.new(1000, "Mars")

end

def test_bus_stop_getter
  assert_equal("The Moon", @bus_stop.name)
  assert_equal([@passenger1, @passenger2, @passenger3], @bus_stop.queue)
end















end
