Rails.application.routes.draw do
  get "manage/photos"
  get "manage/albums"
  get "manage/users"
  get "discover/photos"
  get "discover/albums"
  get "feeds/photos"
  get "feeds/albums"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users, :photos, :albums

  # Defines the root path route ("/")
  root "feeds#photos"
end
