class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :name
      t.integer :person_id
      t.string :day
      t.time :hour

      t.timestamps
    end
  end
end
