class Request < ApplicationRecord
    belongs_to :collection
    has_many :comments
    default_scope { order(created_at: :asc) }
end
