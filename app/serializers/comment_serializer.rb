class CommentSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :text, :request_id,:created_at,:updated_at,:request_title

  def created_at
    object.created_at.in_time_zone('Chennai').strftime("%d-%m-%Y %I:%M %p")
  end

  def updated_at
    object.updated_at.in_time_zone('Chennai').strftime("%d-%m-%Y %I:%M %p")
  end

  def request_title
    object.request.title
  end
end
