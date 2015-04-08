class GamesController < ApplicationController
  
  before_action :set_game, only: [:edit, :update, :show, :like]
  before_action :require_user, except: [:show, :index]
  before_action :require_same_user, only: [:edit, :update]
  
  def index
    @games = Game.paginate(page: params[:page], per_page: 4)
  end
  
  def show

  end
  
  def new
    @game = Game.new
  end
  
  def create
    @game = Game.new(game_params)
    @game.user = current_user
    
    if @game.save
      flash[:success] = "Your game was created successfully!"
      redirect_to games_path
    else
      render :new
    end
  end
  
  def edit

  end
  
  def update
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
    like = Like.create(like: params[:like], user: current_user, game: @game)
    
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
    
    def require_same_user
      if current_user != @game.user
        flash[:danger] = "You can only edit your own games"
        redirect_to games_path
      end
    end
    
    def set_game
      @game = Game.find(params[:id])
    end
  
end