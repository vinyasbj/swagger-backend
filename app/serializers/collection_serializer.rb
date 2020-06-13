class CollectionSerializer < ActiveModel::Serializer
  attributes :id, :name, :description,:created_at,:updated_at, :archived_collection, :prod_url, :staging_url

  has_many  :requests

  def created_at
    object.created_at.in_time_zone('Chennai').strftime("%d-%m-%Y %I:%M %p")
  end

  def updated_at
    object.updated_at.in_time_zone('Chennai').strftime("%d-%m-%Y %I:%M %p")
  end

end
