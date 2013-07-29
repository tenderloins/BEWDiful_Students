class SecretNumberController < ApplicationController
  
  def index
    initialize_numbers
  end
  
  def guess
    @guess = params[:guess].to_i #getting the guess from the parameter line, params will ALWAYS be a string
    @secret_number = (1..10).to_a.sample
    if @guess == 5 #@secret_number
      render 'correct'
    else
      redirect_to guess_again_path #path set in routes
    end
    
  end
  
  def guess_again
    initialize_numbers
    @you_failed = true
    render 'index'

  end
  
  protected #wont' be accessible via url methods
  def initialize_numbers
    @numbers = (1..10).to_a #1..10 is a range, to_a turning it into an array
  end
  
  

end
