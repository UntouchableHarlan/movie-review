class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

# if there is no current user, find by session id
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

# helper tag allows to call current_user throughout pages 
  helper_method :current_user
end
