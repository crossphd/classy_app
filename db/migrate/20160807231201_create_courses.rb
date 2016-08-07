class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.text :description
      t.decimal :cost
      t.integer :user_id
      t.timestamps
    end
  end

  add_index :courses, :user_id
end
