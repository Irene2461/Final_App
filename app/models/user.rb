class User < ApplicationRecord
    has_many :albums, dependent: :destroy
    has_many :photos, dependent: :destroy
end
