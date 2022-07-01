class Photo < ApplicationRecord
    belongs_to :user
    belongs_to :album, optional: true
end
