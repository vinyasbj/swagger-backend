class AddArchivedCollectionToCollections < ActiveRecord::Migration[5.2]
  def change
    add_column :collections, :archived_collection, :boolean,default: false
  end
end
