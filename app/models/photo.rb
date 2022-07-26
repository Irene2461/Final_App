class Photo < ApplicationRecord
    belongs_to :user
    belongs_to :album, optional: true
    has_many :likes, as: :likeable, dependent: :destroy
    
    # mount_uploader :src, ImageUploader
end
