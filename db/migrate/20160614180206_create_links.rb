class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.text :url
      t.references :research, foreign_key: true, index: true
      t.text :title
      t.timestamps null: false
    end
  end
end
