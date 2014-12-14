class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.integer :person_id
      t.string :profile

      t.timestamps
    end
  end
end
