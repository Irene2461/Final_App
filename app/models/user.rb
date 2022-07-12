class User < ApplicationRecord
    has_many :albums, dependent: :destroy
    has_many :photos, dependent: :destroy
    has_many :likes, dependent: :destroy

    has_and_belongs_to_many :followings,
    join_table: "followings_followers",
    foreign_key: "follower_id",
    association_foreign_key: "following_id",
    class_name: "User"

    has_and_belongs_to_many :followers,
    join_table: "followings_followers",
    foreign_key:  "following_id",
    association_foreign_key: "follower_id",
    class_name: "User"
    
end
