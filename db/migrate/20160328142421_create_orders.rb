class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.name
      t.timestamps null: false
    end
  end
end
