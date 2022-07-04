class CreateAlbums < ActiveRecord::Migration[7.0]
  def change
    create_table :albums do |t|
      t.string :title
      t.string :desc
      t.string :src
      t.boolean :is_private, default: false
      t.references :user, foreign_key: true, index: true
      t.timestamps
    end
  end
end
