class CacheTestController < ApplicationController
  def cache1
    render json: params
  end
  def cache2
    @user =  Rails.cache.fetch("big_one", expires_in: 5.minutes) do 
      User.find(params[:id])
    end
    render json: @user
  end

  def odd
    render json: params
  end
end
