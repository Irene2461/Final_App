json.extract! album, :id, :title, :desc, :src, :is_private, :user_id, :created_at, :updated_at
json.url album_url(album, format: :json)
