class MoviesController < ApplicationController
  
  before_action :get_movie, :only => [:show, :edit, :update]
  #this is running the get_movie action before edit, update and show
  before_action :authenticate_user!, :only => [:new, :edit, :create, :update]
  
  def index
    @movies = Movie.all
  end
  
  def index_by_year
    @year = params[:year_released]
    @movies = Movie.where("year_released like ?", "%#{@year}%")
  end
  
  def search
    #render :text => params[:search]  #just rendering the search params to test that its coming through
    @search = params[:search]
    @movies = Movie.where("title like ?", "%#{@search}%")  
  end
  
  def show
    #see before action at top
  end
  
  def new
    @movie = Movie.new
  end
  
  def create
    #render :text => params
    @movie = Movie.new(params.require(:movie).permit(:title, :description, :year_released))
    if @movie.save
      redirect_to movie_path(@movie), :notice => 'Movie created success!'
    else
      render 'new'
    end
  end
  
  def edit
    #see before action at top
  end
  
  def update
    #render :text => params
    #see before action at top
    if @movie.update_attributes(params.require(:movie).permit(:title, :description, :year_released))
      redirect_to movie_path(@movie)
    else
      render 'edit'
    end
  end
  
  protected
  
  def get_movie
    @movie = Movie.find(params[:id])
  end
  
  
  
end