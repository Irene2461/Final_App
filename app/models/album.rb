class Album < ApplicationRecord
  belongs_to :user
  has_many :photos, dependent: :destroy
  has_many :likes, as: :likeable, dependent: :nullify
  mount_uploader :src, ImageUploader
  # serialize :srcs, JSON
end
