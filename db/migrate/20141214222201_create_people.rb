class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :second_name
      t.date :birth_date
      t.integer :group_id
      t.boolean :is_teacher

      t.timestamps
    end
  end
end
