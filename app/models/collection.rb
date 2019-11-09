class Collection < ApplicationRecord
    has_many :requests,dependent: :destroy
end