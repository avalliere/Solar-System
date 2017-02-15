# Create Planet class with name and several other attributes
class Planet
  attr_accessor :name, :order_from_sun, :moon_count, :diameter, :day_length, :atmosphere_contents

  def initialize(planets_hash)
    @name = planets_hash[:name]
    @order_from_sun = planets_hash[:order_from_sun]
    @moon_count = planets_hash[:moon_count]
    @diameter = planets_hash[:diameter]
    @day_length = planets_hash[:day_length]
    @atmosphere_contents = planets_hash[:atmosphere_contents]
  end
end

# Create a SolarSystem class that has an attribute "planets" that has zero to many Planet instances
class SolarSystem
  attr_accessor :planets

  def initialize
    @planets = []
  end

  # Create methods that 1.) add a single planet to a solar system 2.) add a list of planets to an existing list of planets

  def add_planet(name, order_from_sun, moon_count, diameter, day_length, atmosphere_contents)
    @planets.push(name, order_from_sun, moon_count, diameter, day_length, atmosphere_contents)
  end

  def add_many(planets_array)
    planets_array.each do |entry|
      @planets.push(entry)
    end

  end
end

# Add a planet to a new SolarSystem instance using methods from the SolarSystem class

kuiper_belt = SolarSystem.new
kuiper_belt.add_planet("Pluto", "9th", "1", "2,234 miles", "7 hours, 8 minutes", "Nitrogen and Helium")

# Instantiate new planet objects with an associated name. These are pushing to an array so they can be easily moved to a SolarSystem class using one of the methods defined in that class

planets = []

planets << earth = Planet.new(name: "Earth", order_from_sun: "3rd", moon_count: "1", diameter: "7,926 miles", day_length: "23 hours, 56 minutes", atmosphere_contents: "Nitrogen and Oxygen")

planets << mercury = Planet.new(name: "Mercury", order_from_sun: "1st", moon_count: "0", diameter: "3,031 miles", day_length: "59 days", atmosphere_contents: "Sodium and Helium")

planets << venus = Planet.new(name: "Venus", order_from_sun: "2nd", moon_count: "0", diameter: "7,521 miles", day_length: "243 days", atmosphere_contents: "Carbon Dioxide and Nitrogen")

planets << mars = Planet.new(name: "Mars", order_from_sun: "4th", moon_count: "2", diameter: "4,222 miles", day_length: "24 hours, 37 minutes", atmosphere_contents: "Carbon Dioxide and Argon")

planets << jupiter = Planet.new(name: "Jupiter", order_from_sun: "5th", moon_count: "66", diameter: "88,846 miles", day_length: "9 hours, 55 minutes", atmosphere_contents: "Hydrogen, and Helium")

planets << saturn = Planet.new(name: "Saturn", order_from_sun: "6th", moon_count: "62", diameter: "74,900 miles", day_length: "10 hours, 39 minutes", atmosphere_contents: "Hydrogen, and Helium")

planets << uranus = Planet.new(name: "Uranus", order_from_sun: "7th", moon_count: "27", diameter: "31,763 miles", day_length: "17 hours, 14 minutes", atmosphere_contents: "Hydrogen, Helium, and Methane")

planets << neptune = Planet.new(name: "Neptune", order_from_sun: "8th", moon_count: "13", diameter: "30,779 miles", day_length: "16 hours, 7 minutes", atmosphere_contents: "Hydrogen, Helium, and Methane")

# This pushes the planets array into a new SolarSystem class.
our_solar_system = SolarSystem.new
our_solar_system.add_many(planets)

# Display information about all of the planets of our solar system
puts "THE PLANETS of our SOLAR SYSTEM"
puts

planets.each do |instance|
  puts "#{instance.name.upcase} is the #{instance.order_from_sun} planet from the sun. #{instance.name} has #{instance.moon_count} moon(s) and a diameter of #{instance.diameter}. It takes #{instance.day_length} to spin on its axis (that's one #{instance.name} day!) and it's atmosphere is composed of #{instance.atmosphere_contents}."
end
