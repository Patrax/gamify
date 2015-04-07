class GamesController < ApplicationController
  
  def index
    @games = Game.paginate(page: params[:page], per_page: 4)
  end
  
  def show
    @game = Game.find(params[:id])
  end
  
  def new
    @game = Game.new
  end
  
  def create
    @game = Game.new(game_params)
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
    
    if @game.update(game_params)
      flash[:success] = "Your game was updated successfully!"
      redirect_to game_path(@game)
    else
      render :edit
    end
  end
  
  # def destroy
  #   @game = Game.find(params[:id])
  # end
  
  def like
    @game = Game.find(params[:id])
    like = Like.create(like: params[:like], user: User.first, game: @game)
    
    if like.valid?
      flash[:success] = "Your selection was succesful"
      redirect_to :back
    else
      flash[:danger] = "You can only like/dislike a game once"
      redirect_to :back
    end
  end
  
  private
    
    def game_params
      params.require(:game).permit(:name,:summary,:description,:picture)
    end
  
end