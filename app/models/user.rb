class User < ApplicationRecord
    has_many :albums
    has_many :photos
end
