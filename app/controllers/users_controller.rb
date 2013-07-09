require 'securerandom'

class UsersController < ApplicationController

  before_filter :authenticate_user, :except => :get_token

  def index
    @users = User.all
    render :json => @users
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
    user.update_attributes!(params[:user])
    render :json => user
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    render :json => {message: "Destroyed user #{user.id}"}
  end

  def get_token
    user = User.find_by_email(params[:email])
    password = user.password

    if password == params[:password]
      user.token = SecureRandom.base64(10) unless user.token
      user.save!
      render :json => user.token
    else
      render :json => user.errors, status: :unprocessable_entity
    end
  end

  def get_id
    user = User.find_by_token(params[:token])
    render :json => user.id
  end
end

