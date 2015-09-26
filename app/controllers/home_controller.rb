class HomeController < ApplicationController
  before_action :set_auth

  def index
    @u = current_user
    @age = bday 
  end

  def auth
  end

  def dwight
  end
  
  private

  def set_auth
    @auth = session[:omniauth] if session[:omniauth]
  end

  def bday
    b = @u.birthday.split('/')
    @y = b[2].to_i
    @m = b[0].to_i
    @d = b[1].to_i
    bday = [b[2].to_i, b[0].to_i, b[1].to_i].join(",").gsub(',','-')
    age = ((DateTime.now - bday.to_datetime) / 365.25).to_i
    return age
  end
  
end
