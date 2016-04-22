class ItemsController < ApplicationController
  def index
    @items = Item.all
    respond_to do |format|
      format.html
      format.json {render json: items}
    end
  end

  def new
    @item = Item.new
  end

  def create
    item = Item.create(item_params)
    render json: item
  end

  private

  def item_params
    params.fetch(:item, {name: "test name", price: 6.66 }).permit(:name, :price, :picture)
  end
end