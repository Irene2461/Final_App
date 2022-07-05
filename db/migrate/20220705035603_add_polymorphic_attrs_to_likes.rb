class AddPolymorphicAttrsToLikes < ActiveRecord::Migration[7.0]
  def change
    add_column :likes, :likeable_type, :string
    add_column :likes, :likeable_id, :integer
    remove_column :likes, :photo_id, :integer
    remove_column :likes, :album_id, :integer
  end
end
