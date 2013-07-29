class RockPaperScissorsController < ApplicationController
  
  def index
    initialize_weapons
  end
  
  def fight
    initialize_weapons
    @player_weapon = params[:weapon]
    @computer_weapon = @weapons.to_a.sample
    
    # if @computer_weapon != @player_weapon
#       if @computer_weapon == "Rock"  
#         if @player_weapon == "Paper" 
#           @you_lost = false
#         else
#           @you_lost = true 
#         end
#       elsif @computer_weapon == "Paper"
#         if @player_weapon == "Scissors"
#           @you_lost = false
#         else
#           @you_lost = true
#         end
#       else
#         if @player_weapon = "Rock"
#           @you_lost = false
#         elsif
#           @you_lost = true
#         end
#       end  
#     elsif
#       @you_lost == "not_really"
#     end  
    if @you_lost == false #player wins
      render 'congrats'
    else
      render 'index'
    end

    
  end
  
  def fight_again
    initialize_weapons
    @you_lost = true
    render 'index'
  end

  protected
  def initialize_weapons
    @weapons = ['Rock', 'Paper', 'Scissors']
  end
  
end
