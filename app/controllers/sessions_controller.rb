class SessionsController < ApplicationController
  def new
  end

# make sure user has correct password to login if not refresh page with errors
  def create
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render "new"
    end
  end

# logs out user
  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
