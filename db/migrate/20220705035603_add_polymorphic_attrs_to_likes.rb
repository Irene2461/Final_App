class AddPolymorphicAttrsToLikes < ActiveRecord::Migration[7.0]
  def change
    add_column :likes, :likeable_type, :string
    add_column :likes, :likeable_id, :integer
  end
end
