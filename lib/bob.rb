require_relative "building.rb"
class Bob
  puts "how many floors should this building have?"
  floors = gets.chomp.to_i
  puts Building.new(floors).construct


end
