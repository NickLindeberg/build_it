require_relative "building.rb"
class Bob
  puts "How many floors should this building have?"
  floors = gets.chomp.to_i
  puts 'Should it have an antenna?'
  antenna = gets.chomp
  puts Building.new(floors, antenna).construct
end
