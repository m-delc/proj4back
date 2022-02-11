Rails.application.routes.draw do
  resources :users
  # post 'http://localhost:3000/users', to: "users#create"
  get 'http://localhost:3000/index', to: "users#index"


end
