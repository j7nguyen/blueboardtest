class FavoritesController < ApplicationController

  def create
    activity_id = favorite_params[:activity_id]
    @favorite = current_user.find_favorite(activity_id)
    # @favorite = Favorite.find_by favorite_params
    # @favorite ||= Favorite.create!(favorite_params)

    respond_to do |format|
      format.json { render :json => @favorite }
    end
    current_user.toggle_favorite(activity_id)          
  end
  
  def update
    @favorite = Favorite.find_by favorite_params
    respond_to do |format|
      format.json { render :json => @favorite }
    end
  end
  
  def destroy
  end
  
  def index
    @favorites = current_user.favorites
  end
  
  def show

  end

  private
  
  def favorite_params
    params.require(:favorite).permit(:user_id, :activity_id)
  end
end
