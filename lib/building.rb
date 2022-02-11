require 'pry'

class Building
  attr_reader :foundation,
              :floors,
              :antenna

  def initialize(floors, antenna)
    @foundation = "_|___|_"
    @floors = floors
    @antenna = antenna
  end

  def construct
    antenna + " |___| \n" * floors + foundation
  end

  def antenna
    @antenna == "yes" ? "   I   \n  _I_  \n" : "  ___  \n"
  end
end
