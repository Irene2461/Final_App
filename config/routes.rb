Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    namespace :admin do 
      get 'manage/photos', to: 'manage#photos'
      get 'manage/albums', to: 'manage#albums'
      get 'manage/users', to: 'manage#users'
      resources :users
      resources :photos
      resources :albums
    end
    get 'discover/photos'
    get 'discover/albums'
    get 'feeds/photos'
    get 'feeds/albums'

    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
    
    # Defines the root path route ("/")
    root 'feeds#photos'
  end

end
