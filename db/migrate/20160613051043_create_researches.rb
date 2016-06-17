class CreateResearches < ActiveRecord::Migration
  def change
    create_table :researches do |t|
      t.string :title
      t.integer :education_level
      t.integer :client_focus
      t.text :description
      t.references :cluster, foreign_key: true
      t.timestamps null: false
    end
  end
end
