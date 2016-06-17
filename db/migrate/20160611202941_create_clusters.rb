class CreateClusters < ActiveRecord::Migration
  def change
    create_table :clusters do |t|
      t.string :title
      t.timestamps null: false
    end
  end
end
