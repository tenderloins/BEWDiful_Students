class Greeter
<<<<<<< HEAD
<<<<<<< HEAD
  
  GlobalGreeting = "Howdy"
  
  def self.global_greeting #class method (others are intance methods)
    GlobalGreeting
  end
  
  def initialize(greeting=nil)
    @greeting = greeting || GlobalGreeting #setting it to global greeeting if nothing set on init
  end
  
  
  
=======
=======
>>>>>>> teacher/master
  GlobalGreeting = "Howdy"

  def self.global_greeting
    GlobalGreeting
  end


  def initialize(greeting=nil)
    @greeting = greeting || GlobalGreeting
  end
  
  
<<<<<<< HEAD
>>>>>>> teacher/master
=======
>>>>>>> teacher/master
  def greet(name)
    "#{@greeting} #{name}"
  end
end

<<<<<<< HEAD
<<<<<<< HEAD
 greeter = Greeter.new()
# puts greeter.greet("Craig")
# puts greeter.greet("Ben")
# 
# greeter2 = Greeter.new("yo")
# puts greeter2.greet("Mike")
# puts greeter.greet("Mike")

puts Greeter.global_greeting
=======
=======
>>>>>>> teacher/master
greeter = Greeter.new

# puts greeter.greet("Ben")
# puts greeter.greet("Tanya")
# puts greeter.greet("Kerem")

puts Greeter.global_greeting
# puts Greeter.greet
<<<<<<< HEAD
greeter.global_greeting
>>>>>>> teacher/master
=======
greeter.global_greeting
>>>>>>> teacher/master
