class CreatePhotos < ActiveRecord::Migration[7.0]
  def change
    create_table :photos do |t|
      t.string :title
      t.string :desc
      t.string :src
      t.boolean :is_private
      t.references :user, foreign_key: true, index: true
      t.references :album, foreign_key: true, index: true
      t.timestamps
    end
  end
end
