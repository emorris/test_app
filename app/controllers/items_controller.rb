class ItemsController < ApplicationController
  def index
    items = Item.all
    render json: items
  end

  def new
  end

  def create
    item = Item.create(item_params)
    render json: item
  end

  private

  def item_params
    params.fetch(:item, {name: "test name", price: 6.66 }).permit(:name, :price, :pictur)
  end
end
<%= form_for @item do |f| %>

<%= f.file_field :picture, multiple: false %>
<%= f.submit %>
<% end %>