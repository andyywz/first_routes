class FavoritesController < ApplicationController
  before_filter :authenticate_user

  def index
    @favorites = User.find(params[:user_id]).favorites
    render :json => @favorites
  end

  def create
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
