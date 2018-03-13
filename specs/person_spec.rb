require('minitest/autorun')
require_relative('../person.rb')

class TestPerson < MiniTest::Test

def setup
  @person = Person.new("Pawel", 33)
end

def test_person_getters
  assert_equal("Pawel", @person.name)
  assert_equal(33, @person.age)
end















end
