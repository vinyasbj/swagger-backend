class CollectionSerializer < ActiveModel::Serializer
  attributes :id, :name, :description,:requests,:created_at,:updated_at

  def created_at
    object.created_at.in_time_zone('Chennai').strftime("%d-%m-%Y %I:%M %p")
  end

  def updated_at
    object.updated_at.in_time_zone('Chennai').strftime("%d-%m-%Y %I:%M %p")
  end

  def requests
    object.requests
  end
end
