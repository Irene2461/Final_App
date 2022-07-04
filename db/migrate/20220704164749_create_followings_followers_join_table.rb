class CreateFollowingsFollowersJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :followings, :followers
  end
end
