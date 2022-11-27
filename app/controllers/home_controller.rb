class HomeController < ApplicationController
  before_action :set_auth
  require 'zodiac'

  def index
  end

  def auth
  end

  def profile
    @u = current_user || User.find_by(name: 'Ryan Kulp')

  # unused vars that only work with permitted FB app
  # @age = bday
  # @sign = zodiac
  # @meet = people
  end

  private

  def set_auth
    @auth = session[:omniauth] if session[:omniauth]
  end

  def bday
    b = @u.birthday.split('/')
    bday = [b[2].to_i, b[0].to_i, b[1].to_i].join(",").gsub(',','-')
    age = ((DateTime.now - bday.to_datetime) / 365.25).to_i
    return age
  end

  def zodiac
    b = @u.birthday.split('/')
    bday = [b[2].to_i, b[0].to_i, b[1].to_i].join(",").gsub(',','-')
    bday.to_datetime.zodiac_sign
  end

  def people
    likes = @u.likes
    one = likes[0]["name"].to_s
    two = likes[1]["name"].to_s
    three = likes[2]["name"].to_s
    people = one
    return people
  end

end
