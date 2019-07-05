class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.string :title
      t.string :name
      t.text :body
      t.string :headers
      t.integer :collection_id

      t.timestamps
    end
  end
end
