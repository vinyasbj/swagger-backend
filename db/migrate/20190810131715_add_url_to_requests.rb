class AddUrlToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :url, :string
    add_column :requests, :method, :string
  end
end
