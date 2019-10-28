class RequestSerializer < ActiveModel::Serializer
  attributes :id, :title, :name, :body, :headers , :collection_id , :url,:request_method, :request_params,:created_at,:updated_at

  def created_at
    object.created_at.in_time_zone('Chennai').strftime("%d-%m-%Y %I:%M %p")
  end

  def updated_at
    object.updated_at.in_time_zone('Chennai').strftime("%d-%m-%Y %I:%M %p")
  end
  
  def request_method
    object.method
  end
  # ,:method
end
