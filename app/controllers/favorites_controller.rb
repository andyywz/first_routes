class FavoritesController < ApplicationController
  def index
    @favorites = User.find(params[:user_id]).favorites
    render :json => @favorites
  end

  def create
    p params[:contact_id]
    favorite = Favorite.new(params[:favorite])
    if favorite.save!
      render :json => favorite
    else
      render :json => favorite.errors, status: :unprocessable_entity
    end
  end

  def destroy
    favorite = Favorite.find(params[:contact_id])
    favorite.destroy
    render :json => "hello"
  end
end
