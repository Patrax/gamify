class TagsController < ApplicationController
  
  before_action :require_user, except: [:show]
  
  def new
    @tag = Tag.new
  end
  
  def create
    @tag = Tag.new(tag_params)
    
    if @tag.save
      flash[:success] = "Tag was created successfully"
      redirect_to games_path
    else
      render 'new'
    end
  end
  
  def show
    @tag = Tag.find(params[:id])
    @games = @tag.games.paginate(page: params[:page], per_page: 4)
  end
  
  private
  
    def tag_params
      params.require(:tag).permit(:name)
    end
  
end