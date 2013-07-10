class Greeter
  
  GlobalGreeting = "Howdy"
  
  def self.global_greeting #class method (others are intance methods)
    GlobalGreeting
  end
  
  def initialize(greeting=nil)
    @greeting = greeting || GlobalGreeting #setting it to global greeeting if nothing set on init
  end
  
  
  
  def greet(name)
    "#{@greeting} #{name}"
  end
end

 greeter = Greeter.new()
# puts greeter.greet("Craig")
# puts greeter.greet("Ben")
# 
# greeter2 = Greeter.new("yo")
# puts greeter2.greet("Mike")
# puts greeter.greet("Mike")

puts Greeter.global_greeting