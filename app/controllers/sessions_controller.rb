class SessionsController < ApplicationController

  def create
    auth = request.env["omniauth.auth"]
    session[:omniauth] = auth.except('extra')
    user = User.sign_in_from_omniauth(auth)
    session[:user_id] = user.id
    redirect_to profile_path, notice: "SIGNED IN"
  end

  def example
    redirect_to profile_path
  end

  def destroy
    session[:user_id] = nil
    session[:omniauth] = nil
    redirect_to root_url, notice: "SIGNED OUT"
  end

end
