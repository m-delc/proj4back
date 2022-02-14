Rails.application.routes.draw do
  resources :users

  post '/users', to: "users#create"
  post '/login', to: "sessions#login"
  get '/authorized_user', to: "users#show"
  delete '/logout', to: "sessions#logout"
  # update '/profile_change', to: "users#update"

end
