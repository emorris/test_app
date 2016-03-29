class CacheTestController < ApplicationController
  def cache1
    render json: ["cache1"]
  end
  def cache2
    render json: ["cache2"]
  end

  def odd
    render json: params
  end
end
