class Album < ApplicationRecord
    belongs_to :user
    has_many :photos
    has_many :likes, as: :likeable, dependent: :destroy
end
