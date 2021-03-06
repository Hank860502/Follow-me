class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def authenticate_admin
    unless current_user.admin
      flash[:danger] = "You are not an admin"
      redirect_to '/'
    end
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  before_filter :region_names

  def region_names
    @region_names = Region.all
  end


end
