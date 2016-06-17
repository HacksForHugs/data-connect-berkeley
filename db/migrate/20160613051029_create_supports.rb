class CreateSupports < ActiveRecord::Migration
  def change
    create_table :supports do |t|
      t.string :title
      t.references :cluster, foreign_key: true
      t.integer :education_level
      t.integer :teaching_style
      t.text :description
      t.timestamps null: false
    end
  end
end
