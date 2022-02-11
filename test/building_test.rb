require "./lib/building.rb"
require 'minitest/autorun'
require 'minitest/pride'
# require 'pry'; binding.pry

class BuildingTest <Minitest::Test
  def setup
    @building = Building.new(1)
  end

  def test_it_exists
    assert_instance_of Building, @building
  end

  def test_it_has_a_foundation
    assert_equal "_|___|_", @building.foundation
  end

  def test_it_can_have_floors
    assert_equal 1, @building.floors
  end

  def test_it_can_construct_building
    assert_equal "  ___  \n |___| \n_|___|_", @building.construct
  end

end
