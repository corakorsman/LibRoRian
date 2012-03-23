class MoviesController < ApplicationController

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
		@movie = Movie.find(params[:id])
	end
	
  def edit
    @movie = Movie.find(params[:id])
  end
  
  def update
    @movie = Movie.find(params[:id])
    if @movie.update_attributes(params[:movie])
    flash[:notice] = "Movie has been updated."
    redirect_to @movie
  else
      flash[:alert] = "Movie has not been updated."
      render :action => "edit"
    end
  end
  
#  def destroy
#    @movie = Movie.find(params[:id])
#    @movie.destroy
#    flash[:notice] = "Movie object has been deleted."
#    redirect_to movies_path
#  end
  
  
end
