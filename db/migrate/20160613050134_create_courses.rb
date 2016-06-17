class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.text :description
      t.references :cluster, foreign_key: true
      t.integer :units
      t.string :course_number
      t.string :department
      t.references :current_class, index: true
      t.integer :classifier
      t.timestamps null: false
    end
  end
end
