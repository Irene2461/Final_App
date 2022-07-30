class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, 
         :trackable

  has_many :albums, dependent: :destroy
  has_many :photos, dependent: :destroy
  has_many :likes, dependent: :destroy

#   has_and_belongs_to_many :followings,
#                           join_table: "followers_followings",
#                           foreign_key: "follower_id",
#                           association_foreign_key: "following_id",
#                           class_name: "User"

#   has_and_belongs_to_many :followers,
#                           join_table: "followers_followings",
#                           foreign_key: "following_id",
#                           association_foreign_key: "follower_id",
#                           class_name: "User"

  # Has many users follow me
  has_many :received_follows, foreign_key: :followed_user_id, class_name: "Follow"
  has_many :followers, through: :received_follows, source: :follower

  # Me follows many users
  has_many :given_follows, foreign_key: :follower_id, class_name: "Follow"
  has_many :followings, through: :given_follows, source: :followed_user

  mount_uploader :avatar, ImageUploader
end
