
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
  p @all_passengers
end

def test_bus_stop_getter
  assert_equal("The Moon", @bus_stop.name)
  assert_equal([@passenger1, @passenger2, @passenger3], @bus_stop.queue)
end

def test_add_person_to_queue()


  passenger4 = Person.new("Hannah", 14)
  result = @bus_stop.add_person_to_queue(passenger4)
  assert_equal(4, @bus_stop.queue.length())
end
#I am testing to see if the queue has gotten longer















end
