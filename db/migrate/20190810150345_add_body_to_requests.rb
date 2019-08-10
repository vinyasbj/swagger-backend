class AddBodyToRequests < ActiveRecord::Migration[5.2]
  def change
    remove_column :requests, :body
    add_column :requests, :body, :json
  end
end
