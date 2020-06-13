class AddProdUrlToCollections < ActiveRecord::Migration[5.2]
  def change
    add_column :collections, :prod_url, :string
    add_column :collections, :staging_url, :string
  end
end
