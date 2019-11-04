class RequestSerializer < ActiveModel::Serializer
  attributes :id, :title, :name, :body, :headers , :collection_id , :url,:request_method, :request_params,:created_at,:updated_at,:comments,:total_comments

  def created_at
    object.created_at.in_time_zone('Chennai').strftime("%d-%m-%Y %I:%M %p")
  end

  def updated_at
    object.updated_at.in_time_zone('Chennai').strftime("%d-%m-%Y %I:%M %p")
  end
  
  def request_method
    object.method
  end

  def comments
    object.comments
  end

  def total_comments
    object.comments.try(:count)
  end
  # ,:method
end
