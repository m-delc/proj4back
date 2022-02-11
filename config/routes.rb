Rails.application.routes.draw do
  resources :users, only: [:index, :create]

  get 'http://localhost:3000/users', to: "users#index"
  post '/users', to: "users#create"
  post '/login', to: "sessions#login"


end
