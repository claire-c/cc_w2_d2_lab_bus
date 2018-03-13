require('minitest/autorun')
require_relative('../bus.rb')
require_relative('../person.rb')

class TestBus < MiniTest::Test

  def setup
    @bus = Bus.new(1000, "Mars")
    @person = Person.new("Jim", 104)
  end

def test_bus_getter
  assert_equal(1000, @bus.route)
  assert_equal("Mars", @bus.destination)
  assert_equal([], @bus.passengers)
end

def test_passenger_count
  result = @bus.passenger_count
  assert_equal(0, result)
end

def test_add_passenger
  result = @bus.add_passenger(@person)
  assert_equal([@person], result)
end

def test_remove_passenger
  result = @bus.remove_passenger(@person)
  assert_equal([], result)
end

def test_empty_bus
  passenger1 = Person.new("Ivy", 35)
  passenger2 = Person.new("Cletus", 47)
  passenger3 = Person.new("Little Jimmy", 4)
  @bus.add_passenger(passenger1)
  @bus.add_passenger(passenger2)
  @bus.add_passenger(passenger3)
  result = @bus.empty_bus
  assert_equal([], result)
end















end
