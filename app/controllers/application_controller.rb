class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  # use current_user method anywhere in app
  helper_method :current_user

end
