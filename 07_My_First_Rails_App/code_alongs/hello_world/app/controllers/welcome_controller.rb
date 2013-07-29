class WelcomeController < ApplicationController
    
  def index
    @first_name =  params[:first_name]
    @last_name = params[:last_name]
    # @message = "Hello sucker!"
    #puts "****************** #{@message}" #this will go to standard out ie terminal console
    #render :text => @message
  end
  
  
end
