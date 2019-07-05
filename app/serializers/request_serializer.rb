class RequestSerializer < ActiveModel::Serializer
  attributes :id, :title, :name, :body, :headers, :collection_id
end
