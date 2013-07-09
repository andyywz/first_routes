class UsersController < ApplicationController

  def index
    @users = User.all

    render :json => @users
    #render :text => {'text' => "I'm in the index action!"}.to_json
  end

  def create
    user = User.new(params[:user])
    if user.save!
      render :json => user
    else
      render :json => user.errors, status: :unprocessable_entity
    end
  end

  def show
    user = User.find(params[:id])
    render :json => user
  end

  def update
    user = User.find(params[:id])
    if user
      user.name = params[:name] if params[:name]
      user.email = params[:email] if params[:email]
      user.save!
      render :json => user
    end
  end

  def destroy
    user = User.find(params[:id])
    if user
      user.destroy
      render :json => {message: "Destroyed user #{user.id}"}
    end
  end
end

