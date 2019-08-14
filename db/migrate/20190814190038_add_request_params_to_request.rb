class AddRequestParamsToRequest < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :request_params, :string
  end
end
