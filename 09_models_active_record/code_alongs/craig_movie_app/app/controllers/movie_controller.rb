class MovieController < ApplicationController
  
  def index
  end
  
  def show
    @movie_id = params[:id]
    @movie = Movie.find(@movie_id)
  end
  
end