class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_name(params[:session][:name])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      flash[:danger] = "Invalid combination"
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end
end
