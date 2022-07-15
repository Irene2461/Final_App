class RenameIsPrivateToIsActive < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :is_private, :is_active
  end
end
