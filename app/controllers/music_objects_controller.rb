class MusicObjectsController < ApplicationController
  before_filter :find_music_object, :only => [:show, :edit, :update, :destroy]
  
  def index
    @music_objects = MusicObject.all
  end
  
  def new
		@music_object = MusicObject.new
	end
  
	def create
	  @music_object = MusicObject.new(params[:music_object])
	  if @music_object.save
      @music_object.tag!(params[:tags])
		  flash[:notice] = "Music object has been created."
		  redirect_to @music_object
    else
      flash[:alert] = "Music object has not been created."
      render :action => "new"
    end
  end
    
	def show
	end
	
  def edit
  end
  
  def update
    if @music_object.update_attributes(params[:music_object])
      @music_object.tag!(params[:tags])
      flash[:notice] = "Music object has been updated."
      redirect_to @music_object
    else
      flash[:alert] = "Music object has not been updated."
      render :action => "edit"
    end
  end
  
  def destroy
    @music_object.destroy
    flash[:notice] = "Music object has been deleted."
    redirect_to music_objects_path
  end
  
  def search
    if params[:search].present?
      @music_objects = (MusicObject.search(params[:search])).uniq
    else
      @music_objects = MusicObject.all
    end
    
    render :action => "index"
  end
  
private
  def find_music_object
    @music_object = MusicObject.find(params[:id])
  end
end
