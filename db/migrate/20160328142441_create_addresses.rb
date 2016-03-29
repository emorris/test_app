class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :line_1
      t.string :line_2
      t.string :state 
      t.integer :zip
      t.timestamps null: false
    end
  end
end
