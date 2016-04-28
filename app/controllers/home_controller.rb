class HomeController < ApplicationController
  def index
     @title = get_title
    @posts= User.first.posts
  end

  def get_title
    "From Controller"
  end
end
