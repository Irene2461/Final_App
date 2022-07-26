class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, 
         :trackable

  has_many :albums, dependent: :destroy
  has_many :photos, dependent: :destroy
  has_many :likes, dependent: :destroy

  has_and_belongs_to_many :followings,
                          join_table: "followers_followings",
                          foreign_key: "follower_id",
                          association_foreign_key: "following_id",
                          class_name: "User"

  has_and_belongs_to_many :followers,
                          join_table: "followers_followings",
                          foreign_key: "following_id",
                          association_foreign_key: "follower_id",
                          class_name: "User"

  mount_uploader :avatar, ImageUploader
end
