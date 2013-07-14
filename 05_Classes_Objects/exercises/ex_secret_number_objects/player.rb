class Player
  attr_accessor :name
  
  def initialize
  end
  
  def get_name
    puts "Please enter your name:"
    @name = gets.chomp
  end
  
  def welcome_player
    get_name
    puts "\nWelcome #{@name}"
  end
end