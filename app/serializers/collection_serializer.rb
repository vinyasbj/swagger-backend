class CollectionSerializer < ActiveModel::Serializer
  attributes :id, :name, :description,:requests

  def requests
    object.requests
  end
end
