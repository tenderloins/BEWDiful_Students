class SecretNumberGameController < ApplicationController
  def index
    initialize_numbers
  end
  
  def guess
    @guess = params[:guess].to_i
    @secret_number = (1..10).to_a.sample
    if @guess == 5
      render 'correct'
    else
      redirect_to guess_again_path
    end
  end
  
  def guess_again
    initialize_numbers
    @you_failed = true
    render 'index'
  end
  
  protected
  def initialize_numbers
    @numbers = (1..10).to_a
  end
end