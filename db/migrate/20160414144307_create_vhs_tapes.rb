class CreateVhsTapes < ActiveRecord::Migration
  def change
    create_table :vhs_tapes do |t|

      t.timestamps null: false
    end
  end
end
