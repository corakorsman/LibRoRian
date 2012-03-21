class GamesController < ApplicationController

  def index
    @games = Game.all
  end
  
  def new
		@game = Game.new
	end
  
	def create
	  @game = Game.new(params[:game])
	  if @game.save
		flash[:notice] = "Game has been created."
		  redirect_to @game
    else
      flash[:alert] = "Game has not been created."
      render :action => "new"
    end
  end

    
	def show
		@game= Game.find(params[:id])
	end
	
  def edit
    @game = Game.find(params[:id])
  end
  
  def update
    @game = Game.find(params[:id])
    if @game.update_attributes(params[:game])
    flash[:notice] = "Game has been updated."
    redirect_to @game
  else
      flash[:alert] = "Game has not been updated."
      render :action => "edit"
    end
  end
  
#  def destroy
#    @game = Game.find(params[:id])
#    @game.destroy
#    flash[:notice] = "Game has been deleted."
#    redirect_to game_path
#  end
end



