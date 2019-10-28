class CommentSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :text, :request_id
end
