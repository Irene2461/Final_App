json.extract! photo, :id, :title, :desc, :src, :is_private, :album_id, :user_id, :created_at, :updated_at
json.url photo_url(photo, format: :json)
