require 'pry'

class Building
  attr_reader :foundation,
              :floors

  def initialize(floors)
    @foundation = "_|___|_"
    @floors = floors
  end

  def construct
    "  ___  \n" + " |___| \n" * floors + foundation
  end
end
