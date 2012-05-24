class GamesController < ApplicationController
  before_filter :find_game, :only => [:show, :edit, :update, :destroy]
 
  def index
    @games = Game.all
  end
  
  def new
		@game = Game.new(system: 'PS3')
	end
  
	def create
	  @game = Game.new(params[:game])
	  if @game.save
      @game.tag!(params[:tags])
		  flash[:notice] = "Game has been created."
		  redirect_to @game
    else
      flash[:alert] = "Game has not been created."
      render :action => "new"
    end
  end
  
	def show
	end
	
  def edit
  end
  
  def update
    if @game.update_attributes(params[:game])
      @game.tag!(params[:tags])
      flash[:notice] = "Game has been updated."
      redirect_to @game
    else
      flash[:alert] = "Game has not been updated."
      render :action => "edit"
    end
  end
  
  def destroy
    @game.destroy
    flash[:notice] = "Game has been deleted."
    redirect_to games_path
  end
  
private
  def find_game
    @game = Game.find(params[:id])
  end
end