class ApplicationController < ActionController::Base
  protect_from_forgery


  def current_user
    @current_user ||= User.find_by_token(params[:token])
  end

  def logged_in?
    !!current_user
  end

  def authenticate_user
    p current_user
    unless current_user && @current_user.token == params[:token]
      render :json => '418 Teapot', status: 418
    end
  end

end
