class Main
  def initialize
    puts "Welcome to Secret Number!\nWritten by Craig Ridgwell\n\n"
  end
  
  def welcome_player
    @user = Player.new
    @user.welcome_player
  end  
  
  def play_game
    @game = Game.new
    @game.play_game
  end
  
end