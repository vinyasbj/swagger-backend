class CollectionListSerializer < ActiveModel::Serializer
  attributes :id, :name, :description,:created_at,:updated_at,:last_updated, :prod_url, :staging_url

  def created_at
    object.created_at.in_time_zone('Chennai').strftime("%d-%m-%Y %I:%M %p")
  end

  def updated_at
    object.updated_at.in_time_zone('Chennai').strftime("%d-%m-%Y %I:%M %p")
  end

  def last_updated
    begin
      object.requests.last.created_at.in_time_zone('Chennai').strftime("%d-%m-%Y %I:%M %p")
    rescue => exception
      
    end
    # (Time.current - object.requests.last.created_at).minutes
  end
end
