class MoviesController < ApplicationController
  before_filter :find_movie, :only => [:show, :edit, :update, :destroy]
  
  def index
    @movies = Movie.all
  end
  
  def new
		@movie = Movie.new
	end

	def create
	  @movie = Movie.new(params[:movie])
	  if @movie.save
		  flash[:notice] = "Movie has been created."
		  redirect_to @movie
    else
      flash[:alert] = "Movie has not been created."
      render :action => "new"
    end
  end
    
	def show
	end
	
  def edit
  end
  
  def update
    if @movie.update_attributes(params[:movie])
      flash[:notice] = "Movie has been updated."
      redirect_to @movie
    else
      flash[:alert] = "Movie has not been updated."
      render :action => "edit"
    end
  end
  
  def destroy
    @movie.destroy
    flash[:notice] = "Movie has been deleted."
    redirect_to movies_path
  end
  
private
  def find_movie
    @movie = Movie.find(params[:id])
  end
end
