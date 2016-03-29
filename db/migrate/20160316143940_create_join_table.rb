class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :people, :cats do |t|
      t.index [:person_id, :cat_id]
      t.index [:cat_id, :person_id]
    end
  end
end
