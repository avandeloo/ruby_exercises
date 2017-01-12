module VehicleBehavior #Best practice to not include initialize, a module is not supposed to hold state, and to use Upper Camel case when naming

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Vehicle

  def initialize(input_options)
    @speed = 0
    @direction = 'north'
  end

end

class Car < Vehicle
  include VehicleBehavior

  def initialize(input_options)
    super
    @make = input_options[:make]
    @model = input_options[:model]
    @fuel = input_option[:fuel]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  include VehicleBehavior

  def initialize(input_options)
    super
    @type = input_options[:type]
    @weight = input_options[:weight]
    @speed = input_option[:speed]
  end

  def ring_bell
    puts "Ring ring!"
  end
end

car1 = Car.new
bike1 = Bike.new

p car1
p bike1

car1.accelerate
bike1.accelerate

puts ""

p car1
p bike1

puts ""

car1.brake
bike1.brake

p car1
p bike1

puts ""

car1.turn("right")
bike1.turn("left")

p car1
p bike1
