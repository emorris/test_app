class ItemsController < ApplicationController
  def index
    items = Item.all
    render json: items
  end

  def create
    item = Item.create(item_params)
    render json: item
  end

  private

  def item_params
    params.fetch(:item, {name: "test name", price: 6.66 }).permit(:name, :price)
  end
end
