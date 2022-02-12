Rails.application.routes.draw do
  resources :users

  # post 'http://localhost:3000/users', to: "users#create"
  # post 'http://localhost:3000/login', to: "sessions#login"
  
  
  post '/users', to: "users#create"
  post '/login', to: "sessions#login"
  
  get '/authorized_user', to: "users#show"

end
