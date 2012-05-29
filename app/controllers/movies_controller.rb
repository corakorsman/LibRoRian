class MoviesController < ApplicationController
  before_filter :find_movie, :only => [:show, :edit, :update, :destroy]
  
  def index
    @movies = Movie.all
  end
  
  def new
		@movie = Movie.new(medium: 'DVD')
	end

	def create
	  @movie = Movie.new(params[:movie])
	  if @movie.save
      @movie.tag!(params[:tags])
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
      @movie.tag!(params[:tags])
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
  
  def search
    10.times do Rails.logger.warn "" end
    Rails.logger.warn(@movies = Tag.where('name like "?"', params[:search]).map(&:movies))
    10.times do Rails.logger.warn "" end
    @movies = Tag.where('name like ?', params[:search]).map(&:movies).flatten
    
    render :action => "index"
  end
  
private
  def find_movie
    @movie = Movie.find(params[:id])
  end
end
