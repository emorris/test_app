class HomeController < ApplicationController
  def index
    @posts= User.first.posts
  end
end
