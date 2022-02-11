Rails.application.routes.draw do
  resources :users, only: [:index, :create]
  # post 'http://localhost:3000/users', to: "users#create"
  get 'http://localhost:3000/users', to: "users#index"
  post 'http://localhost:3000/users', to: "users#create"


end
