class AddTitleToVhsTape < ActiveRecord::Migration
  def change
    add_column :vhs_tapes, :title, :string
  end
end
