class Car
  def initialize (colour)
    @colour = colour
  end
  
  def self.create_green_car
    new("green")
  end
end


car = Car.new("green")
car2 = Car.create_green_car  #set up a particular instance setting