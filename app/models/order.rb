class Order < ActiveRecord::Base
  belongs_to :address
  belongs_to :user
  has_and_belongs_to_many :items, join_table: 'items_orders'
end
