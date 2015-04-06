class GamesController < ApplicationController
  
  def index
    @games = Game.all
  end
  
  def show
    @game = Game.find(params[:id])
  end
  
  def new
    @game = Game.new
  end
  
  def create
    @game = Game.new(recipe_params)
    @game.user = User.find(2)
    
    if @game.save
      flash[:success] = "Your game was created successfully!"
      redirect_to games_path
    else
      render :new
    end
  end
  
  def edit
    @game = Game.find(params[:id])
  end
  
  def update
    @game = Game.find(params[:id])
    
    if @game.update(recipe_params)
      flash[:success] = "Your game was updated successfully!"
      redirect_to game_path(@game)
    else
      render :edit
    end
  end
  
  # def destroy
  #   @game = Game.find(params[:id])
  # end
  
  private
    
    def recipe_params
      params.require(:game).permit(:name,:summary,:description)
    end
  
end