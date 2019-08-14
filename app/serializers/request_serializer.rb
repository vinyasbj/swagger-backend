class RequestSerializer < ActiveModel::Serializer
  attributes :id, :title, :name, :body, :headers , :collection_id , :url,:request_method, :request_params
  
  def request_method
    object.method
  end
  # ,:method
end
