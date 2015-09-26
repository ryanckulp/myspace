class HomeController < ApplicationController
  before_action :set_auth

  def index
  end

  def animate
  end

  def dwight
  end
  
  private

  def set_auth
    @auth = session[:omniauth] if session[:omniauth]
  end

end
