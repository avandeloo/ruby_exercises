class Vehicle
    def initialize(input_options)
    @speed = 0
    @direction = 'north'
  end

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

class Car < Vehicle

  def initialize (input_options)
    super 
    @make = input_options[:make]
    @model = input_options[:model]
    @color = input_options[:color]
    @year = input_options[:year]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle

  def initialize (input_options)
    super 
    @type = input_options[:type]
    @weight = input_options[:weight]
    @color = input_options[:color]
  end

  def ring_bell
    puts "Ring ring!"
  end
end

bike1 = Bike.new(
                    type: "mountain", 
                    weight: "2kg", 
                    color: "yellow"
                )

car1 = Car.new(
                    make: "toyota", 
                    model: "camry", 
                    color: "red", 
                    year: 1998 
              )

p bike1
p car1
# bike1.accelerate
# car1.accelerate

# bike1.ring_bell
# car1.honk_horn