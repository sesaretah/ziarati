class HomeController < ApplicationController
  before_filter :authenticate_user!, :except => [:index]
  def index
    @advertisements = Advertisement.where(view_in_homepage: true).order('rank desc')
    @blogs = Blog.where(view_in_homepage: true).order('rank desc')
  end
end
