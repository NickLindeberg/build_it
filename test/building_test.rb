require "./lib/building.rb"
require 'minitest/autorun'
require 'minitest/pride'

class BuildingTest <Minitest::Test
  def setup
    @building = Building.new(1, "no")
    @building_with_antenna = Building.new(1, "yes")
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

  def test_it_can_have_antenna
    assert_equal "   I   \n  _I_  \n |___| \n_|___|_", @building_with_antenna.construct
  end
end
