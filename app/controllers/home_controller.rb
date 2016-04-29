class HomeController < ApplicationController
  def index
     get_title
     byebug
    @posts= User.first.posts
  end

  def get_title
     @title = "From Controller"
  end
end
