class AddJoinsTables < ActiveRecord::Migration
  def change
    add_reference(:orders, :address)
    add_reference(:orders, :user)
    create_join_table(:orders, :items)
  end
end
