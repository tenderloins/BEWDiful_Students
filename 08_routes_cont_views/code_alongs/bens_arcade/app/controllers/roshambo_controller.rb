class RoshamboController < ApplicationController
  WEAPONS = %w(Scissors Paper Rock)

  before_action :set_weapons
    
  def play
    set_choices
    if try_again?
      render 'index'
    else
      render 'winner'
    end
  end
  
  protected
  def set_weapons
    @weapons = WEAPONS
  end

  def try_again?
    player_draw? || !player_won?
  end
  
  # If the difference between the player choice and the computer choice is -1 (S-P, P-R) or 2 (R-S)
  # then the player won
  def player_won?    
    @player_won = [-1, 2].include?(@difference)
  end
  
  # If there is no difference between the player and computer choice, it's a draw
  def player_draw?
    @player_draw = (@difference == 0)
  end
  
  def set_choices
    @player_choice = params[:weapon]
    @computer_choice = WEAPONS.sample
    @difference = WEAPONS.index(@player_choice) - WEAPONS.index(@computer_choice)
  end
end