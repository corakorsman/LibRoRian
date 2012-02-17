class MusicObjectsController < ApplicationController
  def index
    @music_objects = MusicObject.all
  end
  
  def new
		@music_object = MusicObject.new
	end
  
	def create
	  @music_object = MusicObject.new(params[:music_object])
	  if @music_object.save
		flash[:notice] = "Music object has been created."
		  redirect_to @music_object
    else
      flash[:alert] = "Music object has not been created."
      render :action => "new"
    end
  end

    
	def show
		@music_object = MusicObject.find(params[:id])
	end
	
  def edit
    @music_object = MusicObject.find(params[:id])
  end
  
  def update
    @music_object = MusicObject.find(params[:id])
    if @music_object.update_attributes(params[:music_object])
    flash[:notice] = "Music object has been updated."
    redirect_to @music_object
    else
      flash[:alert] = "Music object has not been updated."
      render :action => "edit"
    end
  end
  
  def destroy
    @music_object = MusicObject.find(params[:id])
    @music_object.destroy
    flash[:notice] = "Music object has been deleted."
    redirect_to music_objects_path
  end
  

end
