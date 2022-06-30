Rails.application.routes.draw do
  get 'pages/feed'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#feed"
end
