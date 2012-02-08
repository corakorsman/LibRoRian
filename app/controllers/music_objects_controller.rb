class MusicObjectsController < ApplicationController
  def index
  end
  
  def new
		@music_object = MusicObject.new
	end
  
	def create
		if @music_object = MusicObject.new(params[:music_object])
	  @music_object.save
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
	
#end
end
