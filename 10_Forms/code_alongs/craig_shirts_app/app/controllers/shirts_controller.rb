class ShirtsController < ApplicationController
  
  before_action :find_shirt, :only => [:edit, :update]
  
  def index
    @shirts = Shirt.all
  end
  
  def search
    #render :text => params[:search]  #just rendering the search params to test that its coming through
    @shirts = Shirt.where("name like ?", "%#{params[:search]}%")  
  end
  
  def new
    @shirt = Shirt.new
  end
  
  def create
    #render :text => params #rendering params to see that its working
    @shirt = Shirt.new(permitted_attributes) #only permit these fields to update
    if @shirt.save
      redirect_to shirts_path
    else
      render 'new'
    end
  end
  
  def edit
    #@shirt = Shirt.find(params[:id]) using before_action at the top
    #could actually delete this whole action now
  end
  
  def update
    #@shirt = Shirt.find(params[:id]) using before_action at the top
    if @shirt.update_attributes(permitted_attributes)
      redirect_to shirts_path
    else
      render 'edit'
    end
  end
  
  protected
  
  def permitted_attributes
    params.require(:shirt).permit(:name, :description)
  end
  
  def find_shirt
    @shirt = Shirt.find(params[:id])
  end
  
end
