Rails.application.routes.draw do
  get 'manage/photo'
  get 'manage/album'
  get 'manage/users'
  get 'discover/photos'
  get 'discover/albums'
  get 'feeds/photos'
  get 'feeds/albums'
  resources :users, :photos, :albums
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  namespace :
  # Defines the root path route ("/")

end
