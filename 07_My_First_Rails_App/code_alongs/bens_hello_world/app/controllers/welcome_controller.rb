class WelcomeController < ApplicationController
  
  def index
    @first_name = params[:first_name]
    @last_name  = params[:last_name] 
  end
  
end